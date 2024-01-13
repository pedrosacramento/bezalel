HOME_ANGLE = 45; // degrees
HOME_ANIM_RANGE = 90; // degrees
DEFAULT_ANIM_RANGE = 360; // degrees
COLUMN_REFRESH_STEPS=(HOME_ANIM_RANGE+DEFAULT_ANIM_RANGE+HOME_ANIM_RANGE)/HOME_ANIM_RANGE;
CRANK_ARM = 8; // in mm
SERVO_ARM = 9; // in mm
time = $t;

function getGlobalTime() = (time * len(animation))%1;
function getLocalTime() =
    (getGlobalTime() - getHomingDuration()) / getStepDuration();
function getStepDuration() = ((COLUMN_REFRESH_STEPS - 2) / COLUMN_REFRESH_STEPS);

function getCurrentScene() = floor(time * len(animation));
function getSceneData(n) = animation[n];
function getCurrentSceneData() = getSceneData(getCurrentScene());
function getHomingDuration() = (1 / COLUMN_REFRESH_STEPS);

function isPartVisible(n) = len(search(n, visibleParts)) > 0;

function isHomingState() = isHomingBefore() || isHomingAfter();
function isHomingBefore() = getGlobalTime() < getHomingDuration();
function isHomingAfter() = getGlobalTime() > 1 - getHomingDuration();

function servoRowRotation(i) = servoRowAnimation(i);
function servoColRotation(j) = servoColAnimation(j);

function servoHomeAnimationBefore() = HOME_ANGLE + (getGlobalTime() / getHomingDuration()) * 90;
function servoHomeAnimationAfter() =
    (180 - HOME_ANGLE) - (getGlobalTime() - getHomingDuration())/getStepDuration() * 360;

function servoAnimation01() = (!isHomingState()) ?
    HOME_ANGLE + 360 * getLocalTime() :
    HOME_ANGLE;    
function servoAnimation02() =
    (isHomingBefore())?
        servoHomeAnimationBefore() :
    (isHomingAfter()) ?
        servoHomeAnimationAfter() :
    180 - servoAnimation01();
function servoAnimation03() = servoAnimation01();

function servoAnimation04() =
    (!isHomingState()) ?
    360 - servoAnimation01()
    :
    180 + HOME_ANGLE;
    
function servoRowAnimation(i) = (
    getRowServoState(i) == 1 ? servoAnimation01() :
    getRowServoState(i) == 2 ? servoAnimation02() : 
45);
function servoColAnimation(j) =
    (getColServoState(j) == 1) ?
        servoAnimation03() :
    HOME_ANGLE;

function servoRowTranslation(i) = cos(servoRowRotation(i)) * CRANK_ARM;
function servoColTranslation(j) = sin(servoColRotation(j)) * CRANK_ARM;

function servoColAdjustedRotation(j) = -asin(servoColTranslation(j) / SERVO_ARM) + 90;
function servoRowAdjustedRotation(i) = acos(servoRowTranslation(i) / SERVO_ARM);

function getRowServoState(i) = getCurrentSceneData()[0][i];
function getColServoState(j) = getCurrentSceneData()[1][j];

function getPinHeightOffset(i,j,n) =
    getSceneData(n)[1][j] == 1 && getSceneData(n)[0][i] ==  1 ?  1 :
    getSceneData(n)[1][j] == 1 && getSceneData(n)[0][i] ==  2 ? -1 :
    0;
function getPinHeightStart(i,j,n) = n > 0 ? getPinHeightEnd(i,j,n-1) : 0;
function getPinHeightEnd(i,j,n) = getPinHeightStart(i,j,n) +
    getPinHeightOffset(i,j,n);
function getPinHeightInterpolation(i,j,n) = getPinHeightStart(i,j,n) + getPinHeightOffset(i,j,getCurrentScene()) * getLocalTime();
function getPinHeight(i,j) = 
    isHomingBefore() ? getPinHeightStart(i,j,getCurrentScene()) :
    isHomingAfter() ? getPinHeightEnd(i,j,getCurrentScene()) :
    getPinHeightInterpolation(i,j,getCurrentScene());
function getCrankRotation(i,j) = 180 + (atan2(sin(servoColRotation(j)),cos(servoRowRotation(i))));