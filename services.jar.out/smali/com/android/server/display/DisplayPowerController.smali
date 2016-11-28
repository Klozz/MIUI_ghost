.class final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$SettingsObserver;,
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;,
        Lcom/android/server/display/DisplayPowerController$1;,
        Lcom/android/server/display/DisplayPowerController$2;,
        Lcom/android/server/display/DisplayPowerController$3;,
        Lcom/android/server/display/DisplayPowerController$4;,
        Lcom/android/server/display/DisplayPowerController$5;,
        Lcom/android/server/display/DisplayPowerController$6;,
        Lcom/android/server/display/DisplayPowerController$7;,
        Lcom/android/server/display/DisplayPowerController$8;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BRIGHTNESS_RAMP_RATE_FAST:I = 0xc8

.field private static final BRIGHTNESS_RAMP_RATE_SLOW:I = 0x28

.field private static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0x190

.field private static final COLOR_FADE_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static DEBUG:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field public static final KEYGUARD_CLASS:Ljava/lang/String; = "com.android.systemui.keyguard.KeyguardService"

.field public static final KEYGUARD_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final MAX_BLUR_HEIGHT:I = 0x640

.field private static final MAX_BLUR_WIDTH:I = 0x384

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_SCREEN_ON_UNBLOCKED:I = 0x3

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0xfa

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final REPORTED_TO_POLICY_SCREEN_OFF:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_ON:I = 0x2

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_ON:I = 0x1

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_COLOR_FADE_ON_ANIMATION:Z


# instance fields
.field private final mAllowAutoBrightnessWhileDozingConfig:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAppliedAutoBrightness:Z

.field private mAppliedDimming:Z

.field private mAppliedLowPower:Z

.field private mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private mColorFadeFadesConfig:Z

.field private mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field private mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mDisplayReadyLocked:Z

.field private final mDozeBrightnessDefault:I

.field private mDozeBrightnessScale:F

.field private final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field private mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

.field private final mLights:Lcom/android/server/lights/LightsManager;

.field private final mLock:Ljava/lang/Object;

.field private final mMaxBrightness:I

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPendingScreenOff:Z

.field private mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/display/DisplayPowerState;

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private final mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

.field private mReportedScreenStateToPolicy:I

.field private final mScreenBrightnessDarkConfig:I

.field private final mScreenBrightnessDimConfig:I

.field private mScreenBrightnessDozeConfig:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOnBlockStartRealTime:J

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mUnfinishedBusiness:Z

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mWaitingForNegativeProximity:Z

.field private final mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/DisplayPowerController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDozeBrightnessDefault:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/display/DisplayPowerController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDozeBrightnessScale:F

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/display/DisplayPowerController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mMaxBrightness:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/display/DisplayPowerController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/display/DisplayPowerController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mDozeBrightnessScale:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;)Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/display/DisplayPowerController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    return p1
.end method

.method static synthetic -wrap0(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/DisplayPowerController;JZ)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-class v0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->-assertionsDisabled:Z

    .line 97
    sput-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 93
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "blanker"    # Lcom/android/server/display/DisplayBlanker;

    .prologue
    .line 306
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 238
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 241
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 242
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 280
    const v3, -0x43dc28f6    # -0.01f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mDozeBrightnessScale:F

    .line 290
    new-instance v3, Lcom/android/server/display/DisplayPowerController$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 573
    new-instance v3, Lcom/android/server/display/DisplayPowerController$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 589
    new-instance v3, Lcom/android/server/display/DisplayPowerController$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 1040
    new-instance v3, Lcom/android/server/display/DisplayPowerController$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1137
    new-instance v3, Lcom/android/server/display/DisplayPowerController$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 1150
    new-instance v3, Lcom/android/server/display/DisplayPowerController$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 1163
    new-instance v3, Lcom/android/server/display/DisplayPowerController$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$7;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 1330
    new-instance v3, Lcom/android/server/display/DisplayPowerController$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 309
    new-instance v3, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 310
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 312
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 313
    const-class v3, Lcom/android/server/lights/LightsManager;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLights:Lcom/android/server/lights/LightsManager;

    .line 314
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 315
    const-class v3, Landroid/view/WindowManagerPolicy;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    .line 316
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 317
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 321
    .local v24, "resources":Landroid/content/res/Resources;
    const v3, 0x10e0064

    .line 320
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v26

    .line 324
    .local v26, "screenBrightnessSettingMinimum":I
    new-instance v23, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V

    .line 325
    .local v23, "observer":Lcom/android/server/display/DisplayPowerController$SettingsObserver;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->observe()V

    .line 328
    const v3, 0x10e0067

    .line 327
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mDozeBrightnessDefault:I

    .line 330
    const v3, 0x10e0065

    .line 329
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mMaxBrightness:I

    .line 332
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mDozeBrightnessScale:F

    const v4, -0x43dc28f6    # -0.01f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mDozeBrightnessDefault:I

    .line 331
    :goto_0
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    .line 336
    const v3, 0x10e006d

    .line 335
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 339
    const v3, 0x10e006e

    .line 338
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    .line 340
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    if-le v3, v4, :cond_0

    .line 341
    const-string/jumbo v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Expected config_screenBrightnessDark ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 342
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    .line 341
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 342
    const-string/jumbo v5, ") to be less than or equal to "

    .line 341
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 343
    const-string/jumbo v5, "config_screenBrightnessDim ("

    .line 341
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 343
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 341
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 343
    const-string/jumbo v5, ")."

    .line 341
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    if-le v3, v4, :cond_1

    .line 346
    const-string/jumbo v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Expected config_screenBrightnessDark ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 347
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    .line 346
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 347
    const-string/jumbo v5, ") to be less than or equal to "

    .line 346
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 348
    const-string/jumbo v5, "config_screenBrightnessSettingMinimum ("

    .line 346
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 349
    const-string/jumbo v5, ")."

    .line 346
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 352
    move/from16 v0, v26

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 354
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    .line 352
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 356
    .local v10, "screenBrightnessRangeMinimum":I
    const/16 v3, 0xff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 359
    const v3, 0x1120029

    .line 358
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 362
    const v3, 0x1120056

    .line 361
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 365
    const v3, 0x10e006b

    .line 364
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 367
    .local v13, "lightSensorRate":I
    const v3, 0x10e0069

    .line 366
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v14, v3

    .line 369
    .local v14, "brighteningLightDebounce":J
    const v3, 0x10e0068

    .line 368
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    .line 371
    .local v16, "brighteningLightFastDebounce":J
    const v3, 0x10e006a

    .line 370
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v18, v0

    .line 373
    .local v18, "darkeningLightDebounce":J
    const v3, 0x1120057

    .line 372
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    .line 375
    .local v20, "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    const v3, 0x10e006c

    .line 374
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    .line 377
    .local v21, "ambientLightHorizon":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v3, :cond_2

    .line 379
    const v3, 0x107002b

    .line 378
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v22

    .line 381
    .local v22, "lux":[I
    const v3, 0x107002c

    .line 380
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v25

    .line 383
    .local v25, "screenBrightness":[I
    const v3, 0x10e0071

    .line 382
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 385
    .local v9, "lightSensorWarmUpTimeConfig":I
    const v3, 0x1130001

    .line 386
    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 384
    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v12

    .line 388
    .local v12, "dozeScaleFactor":F
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v8

    .line 389
    .local v8, "screenAutoBrightnessSpline":Landroid/util/Spline;
    if-nez v8, :cond_5

    .line 390
    const-string/jumbo v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in config.xml.  config_autoBrightnessLcdBacklightValues (size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 391
    move-object/from16 v0, v25

    array-length v5, v0

    .line 390
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 391
    const-string/jumbo v5, ") "

    .line 390
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 392
    const-string/jumbo v5, "must be monotic and have exactly one more entry than "

    .line 390
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 393
    const-string/jumbo v5, "config_autoBrightnessLevels (size "

    .line 390
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 393
    move-object/from16 v0, v22

    array-length v5, v0

    .line 390
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 393
    const-string/jumbo v5, ") "

    .line 390
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 394
    const-string/jumbo v5, "which must be strictly increasing.  "

    .line 390
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 395
    const-string/jumbo v5, "Auto-brightness will be disabled."

    .line 390
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 418
    .end local v8    # "screenAutoBrightnessSpline":Landroid/util/Spline;
    .end local v9    # "lightSensorWarmUpTimeConfig":I
    .end local v12    # "dozeScaleFactor":F
    .end local v22    # "lux":[I
    .end local v25    # "screenBrightness":[I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 421
    const v3, 0x112002e

    .line 420
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_3

    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    .line 427
    const/high16 v4, 0x40a00000    # 5.0f

    .line 426
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    .line 308
    :cond_3
    return-void

    .line 333
    .end local v10    # "screenBrightnessRangeMinimum":I
    .end local v13    # "lightSensorRate":I
    .end local v14    # "brighteningLightDebounce":J
    .end local v16    # "brighteningLightFastDebounce":J
    .end local v18    # "darkeningLightDebounce":J
    .end local v20    # "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    .end local v21    # "ambientLightHorizon":I
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mDozeBrightnessScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mMaxBrightness:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    goto/16 :goto_0

    .line 398
    .restart local v8    # "screenAutoBrightnessSpline":Landroid/util/Spline;
    .restart local v9    # "lightSensorWarmUpTimeConfig":I
    .restart local v10    # "screenBrightnessRangeMinimum":I
    .restart local v12    # "dozeScaleFactor":F
    .restart local v13    # "lightSensorRate":I
    .restart local v14    # "brighteningLightDebounce":J
    .restart local v16    # "brighteningLightFastDebounce":J
    .restart local v18    # "darkeningLightDebounce":J
    .restart local v20    # "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    .restart local v21    # "ambientLightHorizon":I
    .restart local v22    # "lux":[I
    .restart local v25    # "screenBrightness":[I
    :cond_5
    const/4 v3, 0x0

    aget v3, v25, v3

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v2

    .line 399
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    if-le v3, v2, :cond_6

    .line 400
    const-string/jumbo v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "config_screenBrightnessDark ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 401
    const-string/jumbo v5, ") should be less than or equal to the first value of "

    .line 400
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 402
    const-string/jumbo v5, "config_autoBrightnessLcdBacklightValues ("

    .line 400
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 403
    const-string/jumbo v5, ")."

    .line 400
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_6
    if-ge v2, v10, :cond_7

    .line 406
    move v10, v2

    .line 408
    :cond_7
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 411
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    move-object/from16 v5, p0

    move-object/from16 v7, p4

    .line 408
    invoke-direct/range {v3 .. v21}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Landroid/content/Context;Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIJJJZI)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    goto/16 :goto_1
.end method

.method private animateScreenBrightness(II)V
    .locals 4
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .prologue
    .line 925
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 926
    const-string/jumbo v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Animating brightness: target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 930
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    :cond_1
    :goto_0
    return-void

    .line 931
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private animateScreenStateChange(IZ)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "performScreenOffTransition"    # Z

    .prologue
    const/4 v5, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 939
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 940
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    .line 939
    if-eqz v2, :cond_1

    .line 941
    :cond_0
    return-void

    .line 947
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-eqz v2, :cond_2

    if-eq p1, v1, :cond_2

    .line 948
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 949
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 950
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    .line 953
    :cond_2
    if-ne p1, v0, :cond_4

    .line 957
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 958
    return-void

    .line 974
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 975
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 937
    :goto_0
    return-void

    .line 977
    :cond_4
    if-ne p1, v5, :cond_7

    .line 982
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 983
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 984
    return-void

    .line 988
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 989
    return-void

    .line 993
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 994
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_0

    .line 995
    :cond_7
    if-ne p1, v3, :cond_b

    .line 999
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1000
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v3, :cond_8

    .line 1001
    return-void

    .line 1006
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v3, :cond_a

    .line 1007
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1008
    return-void

    .line 1010
    :cond_9
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1014
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1015
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_0

    .line 1018
    :cond_b
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 1019
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_c

    .line 1022
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1023
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 1024
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    goto :goto_0

    .line 1025
    :cond_c
    if-eqz p2, :cond_e

    .line 1026
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 1027
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v4, :cond_d

    .line 1026
    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v0

    .line 1025
    if-eqz v0, :cond_e

    .line 1029
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v1, :cond_e

    .line 1031
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    :cond_d
    move v0, v1

    .line 1028
    goto :goto_1

    .line 1035
    :cond_e
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    goto/16 :goto_0
.end method

.method private blockScreenOn()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 863
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_0

    .line 864
    const-string/jumbo v0, "Screen on blocked"

    const-wide/32 v2, 0x20000

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 865
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-direct {v0, p0, v4}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 866
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 867
    const-string/jumbo v0, "DisplayPowerController"

    const-string/jumbo v1, "Blocking screen on until initial contents have been drawn."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_0
    return-void
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1301
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 921
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 920
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .locals 4

    .prologue
    .line 1119
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1120
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1121
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    .line 1118
    :cond_0
    return-void
.end method

.method private static createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 13
    .param p0, "lux"    # [I
    .param p1, "brightness"    # [I

    .prologue
    const/high16 v12, 0x3fa00000    # 1.25f

    .line 1273
    :try_start_0
    array-length v2, p1

    .line 1274
    .local v2, "n":I
    new-array v5, v2, [F

    .line 1275
    .local v5, "x":[F
    new-array v6, v2, [F

    .line 1276
    .local v6, "y":[F
    const/4 v7, 0x0

    aget v7, p1, v7

    invoke-static {v7}, Lcom/android/server/display/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v7

    const/4 v8, 0x0

    aput v7, v6, v8

    .line 1277
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1278
    add-int/lit8 v7, v1, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    aput v7, v5, v1

    .line 1279
    aget v7, p1, v1

    invoke-static {v7}, Lcom/android/server/display/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v7

    aput v7, v6, v1

    .line 1277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1282
    :cond_0
    invoke-static {v5, v6}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .line 1283
    .local v3, "spline":Landroid/util/Spline;
    sget-boolean v7, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1284
    const-string/jumbo v7, "DisplayPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Auto-brightness spline: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "v":F
    :goto_1
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    .line 1286
    const-string/jumbo v7, "DisplayPowerController"

    const-string/jumbo v8, "  %7.1f: %7.1f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1285
    mul-float/2addr v4, v12

    goto :goto_1

    .line 1289
    .end local v4    # "v":F
    :cond_1
    return-object v3

    .line 1290
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "spline":Landroid/util/Spline;
    .end local v5    # "x":[F
    .end local v6    # "y":[F
    :catch_0
    move-exception v0

    .line 1291
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v7, "DisplayPowerController"

    const-string/jumbo v8, "Could not create auto-brightness spline."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1292
    const/4 v7, 0x0

    return-object v7
.end method

.method private debounceProximitySensor()V
    .locals 8

    .prologue
    .line 1099
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v1, :cond_0

    .line 1100
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 1101
    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    .line 1102
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1103
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    .line 1105
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 1106
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 1107
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 1098
    .end local v2    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 1111
    .restart local v2    # "now":J
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1112
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1113
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1204
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1205
    const-string/jumbo v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1215
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    .line 1214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAppliedDimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAppliedLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mReportedToPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1225
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    .line 1224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1227
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1229
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    .line 1228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1233
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    .line 1232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1236
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_2

    .line 1237
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 1240
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_3

    .line 1241
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 1203
    :cond_3
    return-void
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1071
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_3

    .line 1072
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    .line 1075
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-ne v0, v3, :cond_2

    if-eqz p3, :cond_2

    .line 1076
    return-void

    .line 1073
    :cond_1
    return-void

    .line 1082
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1083
    if-eqz p3, :cond_4

    .line 1084
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1086
    const-wide/16 v0, 0x0

    add-long/2addr v0, p1

    .line 1085
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 1094
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    .line 1070
    :cond_3
    return-void

    .line 1088
    :cond_4
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1090
    const-wide/16 v0, 0xfa

    add-long/2addr v0, p1

    .line 1089
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_0
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 547
    new-instance v1, Lcom/android/server/display/DisplayPowerState;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 548
    new-instance v3, Lcom/android/server/display/ColorFade;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/display/ColorFade;-><init>(I)V

    .line 547
    invoke-direct {v1, v2, v3}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 551
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    .line 550
    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 552
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 553
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 556
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    .line 555
    new-array v3, v5, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 557
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 558
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 560
    new-instance v1, Lcom/android/server/display/RampAnimator;

    .line 561
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v3, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    .line 560
    invoke-direct {v1, v2, v3}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 562
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {v1, v2}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    .line 567
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 550
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 555
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1297
    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1246
    packed-switch p0, :pswitch_data_0

    .line 1254
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1248
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    return-object v0

    .line 1250
    :pswitch_1
    const-string/jumbo v0, "Negative"

    return-object v0

    .line 1252
    :pswitch_2
    const-string/jumbo v0, "Positive"

    return-object v0

    .line 1246
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static reportedToPolicyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1259
    packed-switch p0, :pswitch_data_0

    .line 1267
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1261
    :pswitch_0
    const-string/jumbo v0, "REPORTED_TO_POLICY_SCREEN_OFF"

    return-object v0

    .line 1263
    :pswitch_1
    const-string/jumbo v0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    return-object v0

    .line 1265
    :pswitch_2
    const-string/jumbo v0, "REPORTED_TO_POLICY_SCREEN_ON"

    return-object v0

    .line 1259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .locals 2

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1160
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1158
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 2

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1147
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1145
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1134
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1132
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 531
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 529
    return-void

    .line 530
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 536
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v1, :cond_0

    .line 537
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 538
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 539
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 540
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 535
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 5
    .param p1, "debounceTime"    # J

    .prologue
    .line 1126
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1129
    :cond_0
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1125
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, -0x1

    .line 1048
    if-eqz p1, :cond_1

    .line 1049
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 1052
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1053
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 1054
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x3

    .line 1053
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1060
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1061
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 1062
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1063
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1064
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1065
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_0
.end method

.method private setScreenState(I)Z
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 881
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v5

    if-eq v5, p1, :cond_0

    .line 882
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v5

    if-eq v5, v3, :cond_3

    const/4 v2, 0x1

    .line 883
    .local v2, "wasOn":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayPowerState;->setScreenState(I)V

    .line 887
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v5, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    .end local v2    # "wasOn":Z
    :cond_0
    :goto_1
    if-ne p1, v3, :cond_4

    const/4 v1, 0x1

    .line 900
    .local v1, "isOff":Z
    :goto_2
    if-eqz v1, :cond_1

    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz v5, :cond_1

    .line 901
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v5, :cond_5

    .line 905
    :cond_1
    if-nez v1, :cond_2

    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-nez v5, :cond_2

    .line 906
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 907
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_6

    .line 908
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    .line 912
    :goto_3
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 916
    :cond_2
    :goto_4
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v5, :cond_7

    :goto_5
    return v3

    .line 882
    .end local v1    # "isOff":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "wasOn":Z
    goto :goto_0

    .line 899
    .end local v2    # "wasOn":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isOff":Z
    goto :goto_2

    .line 902
    :cond_5
    iput v4, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 903
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 904
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->screenTurnedOff()V

    goto :goto_4

    .line 910
    :cond_6
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    goto :goto_3

    :cond_7
    move v3, v4

    .line 916
    goto :goto_5

    .line 888
    .end local v1    # "isOff":Z
    .restart local v2    # "wasOn":Z
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private unblockScreenOn()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 872
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v2, :cond_0

    .line 873
    iput-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 874
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long v0, v2, v4

    .line 875
    .local v0, "delay":J
    const-string/jumbo v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unblocked screen on after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const-string/jumbo v2, "Screen on blocked"

    const-wide/32 v4, 0x20000

    const/4 v3, 0x0

    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 871
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private updatePowerState()V
    .locals 15

    .prologue
    .line 599
    const/4 v5, 0x0

    .line 600
    .local v5, "mustInitialize":Z
    const/4 v0, 0x0

    .line 602
    .local v0, "autoBrightnessAdjustmentChanged":Z
    iget-object v13, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 603
    const/4 v12, 0x0

    :try_start_0
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 604
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_0

    monitor-exit v13

    .line 605
    return-void

    .line 608
    :cond_0
    :try_start_1
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v12, :cond_4

    .line 609
    new-instance v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v14, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v12, v14}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 610
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 611
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 612
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 613
    const/4 v5, 0x1

    .line 624
    :cond_1
    :goto_0
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_6

    const/4 v6, 0x0

    .local v6, "mustNotify":Z
    :goto_1
    monitor-exit v13

    .line 628
    if-eqz v5, :cond_2

    .line 629
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->initialize()V

    .line 635
    :cond_2
    const/4 v3, -0x1

    .line 636
    .local v3, "brightness":I
    const/4 v7, 0x0

    .line 637
    .local v7, "performScreenOffTransition":Z
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    packed-switch v12, :pswitch_data_0

    .line 655
    const/4 v10, 0x2

    .line 658
    .local v10, "state":I
    :cond_3
    :goto_2
    sget-boolean v12, Lcom/android/server/display/DisplayPowerController;->-assertionsDisabled:Z

    if-nez v12, :cond_9

    if-eqz v10, :cond_8

    const/4 v12, 0x1

    :goto_3
    if-nez v12, :cond_9

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 614
    .end local v3    # "brightness":I
    .end local v6    # "mustNotify":Z
    .end local v7    # "performScreenOffTransition":Z
    .end local v10    # "state":I
    :cond_4
    :try_start_2
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v12, :cond_1

    .line 615
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 616
    iget-object v14, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 615
    cmpl-float v12, v12, v14

    if-eqz v12, :cond_5

    const/4 v0, 0x1

    .line 617
    :goto_4
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v14, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v12, v14}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 618
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v14, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v12, v14

    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 619
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 620
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 621
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 602
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 615
    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    .line 624
    :cond_6
    const/4 v6, 0x1

    .restart local v6    # "mustNotify":Z
    goto :goto_1

    .line 639
    .restart local v3    # "brightness":I
    .restart local v7    # "performScreenOffTransition":Z
    :pswitch_0
    const/4 v10, 0x1

    .line 640
    .restart local v10    # "state":I
    const/4 v7, 0x1

    .line 641
    goto :goto_2

    .line 643
    .end local v10    # "state":I
    :pswitch_1
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v12, :cond_7

    .line 644
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 648
    .restart local v10    # "state":I
    :goto_5
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-nez v12, :cond_3

    .line 649
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    goto :goto_2

    .line 646
    .end local v10    # "state":I
    :cond_7
    const/4 v10, 0x3

    .restart local v10    # "state":I
    goto :goto_5

    .line 658
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 661
    :cond_9
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v12, :cond_2a

    .line 662
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v12, :cond_28

    const/4 v12, 0x1

    if-eq v10, v12, :cond_28

    .line 663
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 664
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v12, :cond_a

    .line 665
    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    .line 666
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 667
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    .line 679
    :cond_a
    :goto_6
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v12, :cond_b

    .line 680
    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_b

    .line 681
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 682
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 687
    :cond_b
    :goto_7
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v12, :cond_c

    .line 688
    const/4 v10, 0x1

    .line 694
    :cond_c
    invoke-direct {p0, v10, v7}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IZ)V

    .line 695
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v12}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v10

    .line 698
    const/4 v12, 0x1

    if-ne v10, v12, :cond_d

    .line 699
    const/4 v3, 0x0

    .line 700
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mLights:Lcom/android/server/lights/LightsManager;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 701
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mLights:Lcom/android/server/lights/LightsManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 705
    :cond_d
    const/4 v12, 0x3

    if-eq v10, v12, :cond_e

    const/4 v12, 0x4

    if-ne v10, v12, :cond_f

    .line 706
    :cond_e
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mLights:Lcom/android/server/lights/LightsManager;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 707
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mLights:Lcom/android/server/lights/LightsManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 711
    :cond_f
    const/4 v1, 0x0

    .line 712
    .local v1, "autoBrightnessEnabled":Z
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v12, :cond_12

    .line 713
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-eqz v12, :cond_2c

    .line 714
    const/4 v12, 0x3

    if-eq v10, v12, :cond_10

    const/4 v12, 0x4

    if-ne v10, v12, :cond_2b

    :cond_10
    const/4 v2, 0x1

    .line 715
    .local v2, "autoBrightnessEnabledInDoze":Z
    :goto_8
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v12, :cond_2e

    .line 716
    const/4 v12, 0x2

    if-eq v10, v12, :cond_11

    .line 715
    if-eqz v2, :cond_2e

    .line 717
    :cond_11
    if-gez v3, :cond_2d

    const/4 v1, 0x1

    .line 718
    :goto_9
    if-eqz v0, :cond_2f

    .line 719
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    .line 720
    :goto_a
    iget-object v13, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 721
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    const/4 v12, 0x2

    if-eq v10, v12, :cond_30

    const/4 v12, 0x1

    .line 720
    :goto_b
    invoke-virtual {v13, v1, v14, v12, v11}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ZFZZ)V

    .line 730
    .end local v2    # "autoBrightnessEnabledInDoze":Z
    :cond_12
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    if-eqz v12, :cond_13

    .line 731
    if-eqz v3, :cond_13

    .line 732
    const/16 v3, 0xff

    .line 736
    :cond_13
    const/4 v9, 0x0

    .line 737
    .local v9, "slowChange":Z
    if-gez v3, :cond_33

    .line 738
    if-eqz v1, :cond_14

    .line 739
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v12}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()I

    move-result v3

    .line 741
    :cond_14
    if-ltz v3, :cond_32

    .line 743
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v3

    .line 744
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-eqz v12, :cond_15

    if-eqz v0, :cond_31

    .line 747
    :cond_15
    :goto_c
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 756
    :goto_d
    if-gez v3, :cond_17

    const/4 v12, 0x3

    if-eq v10, v12, :cond_16

    .line 757
    const/4 v12, 0x4

    if-ne v10, v12, :cond_17

    .line 758
    :cond_16
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    .line 765
    :cond_17
    if-gez v3, :cond_18

    .line 766
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    invoke-direct {p0, v12}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v3

    .line 771
    :cond_18
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1b

    .line 772
    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-le v3, v12, :cond_19

    .line 773
    add-int/lit8 v12, v3, -0xa

    .line 774
    iget v13, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 773
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 774
    iget v13, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 773
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 776
    :cond_19
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v12, :cond_1a

    .line 777
    const/4 v9, 0x0

    .line 779
    :cond_1a
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    .line 784
    :cond_1b
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v12, :cond_1e

    .line 785
    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-le v3, v12, :cond_1c

    .line 786
    div-int/lit8 v12, v3, 0x2

    iget v13, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 788
    :cond_1c
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-nez v12, :cond_1d

    .line 789
    const/4 v9, 0x0

    .line 791
    :cond_1d
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    .line 796
    :cond_1e
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-nez v12, :cond_20

    .line 797
    const/4 v12, 0x2

    if-eq v10, v12, :cond_1f

    const/4 v12, 0x3

    if-ne v10, v12, :cond_35

    .line 799
    :cond_1f
    if-eqz v9, :cond_34

    const/16 v12, 0x28

    .line 798
    :goto_e
    invoke-direct {p0, v3, v12}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    .line 809
    :cond_20
    :goto_f
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v12, :cond_21

    .line 810
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v12}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v12

    if-eqz v12, :cond_36

    .line 809
    :cond_21
    const/4 v8, 0x0

    .line 813
    :goto_10
    if-eqz v8, :cond_38

    .line 814
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v12}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v12

    if-eqz v12, :cond_37

    const/4 v4, 0x0

    .line 817
    .local v4, "finished":Z
    :goto_11
    if-eqz v8, :cond_22

    const/4 v12, 0x1

    if-eq v10, v12, :cond_22

    .line 818
    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_22

    .line 819
    const/4 v12, 0x2

    iput v12, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 820
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy;->screenTurnedOn()V

    .line 824
    :cond_22
    if-nez v4, :cond_23

    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-eqz v12, :cond_39

    .line 833
    :cond_23
    :goto_12
    if-eqz v8, :cond_25

    if-eqz v6, :cond_25

    .line 835
    iget-object v13, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 836
    :try_start_3
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v12, :cond_24

    .line 837
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 839
    sget-boolean v12, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v12, :cond_24

    .line 840
    const-string/jumbo v12, "DisplayPowerController"

    const-string/jumbo v14, "Display ready!"

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_24
    monitor-exit v13

    .line 844
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    .line 848
    :cond_25
    if-eqz v4, :cond_27

    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-eqz v12, :cond_27

    .line 849
    sget-boolean v12, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v12, :cond_26

    .line 850
    const-string/jumbo v12, "DisplayPowerController"

    const-string/jumbo v13, "Finished business..."

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_26
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 853
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v12}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    .line 596
    :cond_27
    return-void

    .line 669
    .end local v1    # "autoBrightnessEnabled":Z
    .end local v4    # "finished":Z
    .end local v9    # "slowChange":Z
    :cond_28
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v12, :cond_29

    .line 670
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 669
    if-eqz v12, :cond_29

    .line 671
    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_29

    .line 672
    const/4 v12, 0x1

    if-eq v10, v12, :cond_29

    .line 673
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto/16 :goto_6

    .line 675
    :cond_29
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 676
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 677
    const/4 v12, -0x1

    iput v12, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    goto/16 :goto_6

    .line 685
    :cond_2a
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_7

    .line 714
    .restart local v1    # "autoBrightnessEnabled":Z
    :cond_2b
    const/4 v2, 0x0

    .restart local v2    # "autoBrightnessEnabledInDoze":Z
    goto/16 :goto_8

    .line 713
    .end local v2    # "autoBrightnessEnabledInDoze":Z
    :cond_2c
    const/4 v2, 0x0

    .restart local v2    # "autoBrightnessEnabledInDoze":Z
    goto/16 :goto_8

    .line 717
    :cond_2d
    const/4 v1, 0x0

    goto/16 :goto_9

    .line 715
    :cond_2e
    const/4 v1, 0x0

    goto/16 :goto_9

    .line 718
    :cond_2f
    const/4 v11, 0x0

    .local v11, "userInitiatedChange":Z
    goto/16 :goto_a

    .line 721
    .end local v11    # "userInitiatedChange":Z
    :cond_30
    const/4 v12, 0x0

    goto/16 :goto_b

    .line 745
    .end local v2    # "autoBrightnessEnabledInDoze":Z
    .restart local v9    # "slowChange":Z
    :cond_31
    const/4 v9, 0x1

    goto/16 :goto_c

    .line 749
    :cond_32
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    goto/16 :goto_d

    .line 752
    :cond_33
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    goto/16 :goto_d

    .line 799
    :cond_34
    const/16 v12, 0xc8

    goto/16 :goto_e

    .line 801
    :cond_35
    const/4 v12, 0x0

    invoke-direct {p0, v3, v12}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    goto/16 :goto_f

    .line 811
    :cond_36
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v12}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v12

    if-nez v12, :cond_21

    .line 812
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v13, p0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v8

    .local v8, "ready":Z
    goto/16 :goto_10

    .line 814
    .end local v8    # "ready":Z
    :cond_37
    const/4 v4, 0x1

    .restart local v4    # "finished":Z
    goto/16 :goto_11

    .line 813
    .end local v4    # "finished":Z
    :cond_38
    const/4 v4, 0x0

    .restart local v4    # "finished":Z
    goto/16 :goto_11

    .line 825
    :cond_39
    sget-boolean v12, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v12, :cond_3a

    .line 826
    const-string/jumbo v12, "DisplayPowerController"

    const-string/jumbo v13, "Unfinished business..."

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_3a
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v12}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 829
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    goto/16 :goto_12

    .line 835
    :catchall_1
    move-exception v12

    monitor-exit v13

    throw v12

    .line 637
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1172
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1173
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1174
    const-string/jumbo v0, "Display Power Controller Locked State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mDisplayReadyLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mPendingRequestLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1179
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 1178
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1183
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1184
    const-string/jumbo v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessDarkConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAllowAutoBrightnessWhileDozingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1192
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 1191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$9;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    .line 1200
    const-wide/16 v2, 0x3e8

    .line 1195
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1171
    return-void

    .line 1172
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 4
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .prologue
    .line 494
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 495
    const-string/jumbo v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestPowerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 496
    const-string/jumbo v3, ", waitForNegativeProximity="

    .line 495
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 500
    const/4 v0, 0x0

    .line 502
    .local v0, "changed":Z
    if-eqz p2, :cond_1

    .line 503
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-eqz v1, :cond_5

    .line 508
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v1, :cond_6

    .line 509
    new-instance v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 510
    const/4 v0, 0x1

    .line 516
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 517
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 520
    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v1, :cond_7

    .line 525
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v1

    .line 504
    :cond_5
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 505
    const/4 v0, 0x1

    goto :goto_0

    .line 511
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 512
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 513
    const/4 v0, 0x1

    goto :goto_1

    .line 521
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 522
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 499
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateBrightness()V
    .locals 0

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 858
    return-void
.end method
