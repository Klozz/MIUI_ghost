.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppTransition$SettingsObserver;
    }
.end annotation


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field private static final DEBUG_ANIM:Z = false

.field private static final DEBUG_APP_TRANSITIONS:Z = false

.field private static final DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field private static final NEXT_TRANSIT_TYPE_CLIP_REVEAL:I = 0x8

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE:I = 0x7

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x6

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP:I = 0x5

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "AppTransition"

.field private static final THUMBNAIL_APP_TRANSITION_ALPHA_DURATION:I = 0x150

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x7

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x6

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_TASK_CLOSE:I = 0x9

.field public static final TRANSIT_TASK_IN_PLACE:I = 0x11

.field public static final TRANSIT_TASK_OPEN:I = 0x8

.field public static final TRANSIT_TASK_OPEN_BEHIND:I = 0x10

.field public static final TRANSIT_TASK_TO_BACK:I = 0xb

.field public static final TRANSIT_TASK_TO_FRONT:I = 0xa

.field public static final TRANSIT_UNSET:I = -0x1

.field public static final TRANSIT_WALLPAPER_CLOSE:I = 0xc

.field public static final TRANSIT_WALLPAPER_INTRA_CLOSE:I = 0xf

.field public static final TRANSIT_WALLPAPER_INTRA_OPEN:I = 0xe

.field public static final TRANSIT_WALLPAPER_OPEN:I = 0xd


# instance fields
.field private mActivityAnimations:[I

.field private mAnimationDuration:I

.field private mAppTransitionState:I

.field private final mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final mClipRevealTranslationY:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mExitOnly:Z

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mH:Landroid/os/Handler;

.field private mIsResId:Z

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransition:I

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionInPlace:I

.field private mNextAppTransitionInsets:Landroid/graphics/Rect;

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionStartHeight:I

.field private mNextAppTransitionStartWidth:I

.field private mNextAppTransitionStartX:I

.field private mNextAppTransitionStartY:I

.field private mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

.field private mNextAppTransitionType:I

.field private mReverseExit:Z

.field private mSettingsObserver:Lcom/android/server/wm/AppTransition$SettingsObserver;

.field private final mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private mTmpFromClipRect:Landroid/graphics/Rect;

.field private mTmpToClipRect:Landroid/graphics/Rect;

.field private final mTouchResponseInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/AppTransition;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/AppTransition;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->updateSettings()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 152
    iput v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 172
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    .line 174
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 175
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 181
    iput v3, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 189
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v4, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 193
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v4, v2, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 192
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    .line 198
    const/16 v0, 0xb

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    .line 200
    iput-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 204
    iput v3, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 209
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 210
    new-instance v0, Lcom/android/server/wm/AppTransition$SettingsObserver;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/AppTransition$SettingsObserver;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mSettingsObserver:Lcom/android/server/wm/AppTransition$SettingsObserver;

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mSettingsObserver:Lcom/android/server/wm/AppTransition$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition$SettingsObserver;->observe()V

    .line 212
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->updateSettings()V

    .line 213
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    .line 215
    const v0, 0x10c000e

    .line 214
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 217
    const v0, 0x10c000f

    .line 216
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 219
    const/high16 v1, 0x10e0000

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 221
    const v0, 0x10c0003

    .line 220
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 222
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 234
    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 246
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 245
    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    .line 208
    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1375
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    packed-switch v0, :pswitch_data_0

    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1377
    :pswitch_0
    const-string/jumbo v0, "APP_STATE_IDLE"

    return-object v0

    .line 1379
    :pswitch_1
    const-string/jumbo v0, "APP_STATE_READY"

    return-object v0

    .line 1381
    :pswitch_2
    const-string/jumbo v0, "APP_STATE_RUNNING"

    return-object v0

    .line 1383
    :pswitch_3
    const-string/jumbo v0, "APP_STATE_TIMEOUT"

    return-object v0

    .line 1375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "transition"    # I

    .prologue
    .line 1328
    packed-switch p0, :pswitch_data_0

    .line 1369
    :pswitch_0
    const-string/jumbo v0, "<UNKNOWN>"

    return-object v0

    .line 1330
    :pswitch_1
    const-string/jumbo v0, "TRANSIT_UNSET"

    return-object v0

    .line 1333
    :pswitch_2
    const-string/jumbo v0, "TRANSIT_NONE"

    return-object v0

    .line 1336
    :pswitch_3
    const-string/jumbo v0, "TRANSIT_ACTIVITY_OPEN"

    return-object v0

    .line 1339
    :pswitch_4
    const-string/jumbo v0, "TRANSIT_ACTIVITY_CLOSE"

    return-object v0

    .line 1342
    :pswitch_5
    const-string/jumbo v0, "TRANSIT_TASK_OPEN"

    return-object v0

    .line 1345
    :pswitch_6
    const-string/jumbo v0, "TRANSIT_TASK_CLOSE"

    return-object v0

    .line 1348
    :pswitch_7
    const-string/jumbo v0, "TRANSIT_TASK_TO_FRONT"

    return-object v0

    .line 1351
    :pswitch_8
    const-string/jumbo v0, "TRANSIT_TASK_TO_BACK"

    return-object v0

    .line 1354
    :pswitch_9
    const-string/jumbo v0, "TRANSIT_WALLPAPER_CLOSE"

    return-object v0

    .line 1357
    :pswitch_a
    const-string/jumbo v0, "TRANSIT_WALLPAPER_OPEN"

    return-object v0

    .line 1360
    :pswitch_b
    const-string/jumbo v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    return-object v0

    .line 1363
    :pswitch_c
    const-string/jumbo v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    return-object v0

    .line 1366
    :pswitch_d
    const-string/jumbo v0, "TRANSIT_TASK_OPEN_BEHIND"

    return-object v0

    .line 1328
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static computePivot(IF)F
    .locals 3
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .prologue
    .line 474
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, p1, v1

    .line 475
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 476
    int-to-float v1, p0

    return v1

    .line 478
    :cond_0
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method private createClipRevealAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 25
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 536
    if-eqz p2, :cond_1

    .line 539
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 540
    .local v10, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 542
    .local v9, "appHeight":I
    const/16 v18, 0x0

    .line 543
    .local v18, "t":F
    if-lez v9, :cond_0

    .line 544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v9

    move/from16 v22, v0

    div-float v18, v21, v22

    .line 546
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    move/from16 v21, v0

    .line 547
    int-to-float v0, v9

    move/from16 v22, v0

    const/high16 v23, 0x40e00000    # 7.0f

    div-float v22, v22, v23

    mul-float v22, v22, v18

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    .line 546
    add-int v20, v21, v22

    .line 549
    .local v20, "translationY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v11, v21, v22

    .line 550
    .local v11, "centerX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v12, v21, v22

    .line 553
    .local v12, "centerY":I
    new-instance v13, Landroid/view/animation/ClipRectLRAnimation;

    .line 554
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    sub-int v21, v11, v21

    .line 555
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v11

    .line 556
    const/16 v23, 0x0

    .line 553
    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v13, v0, v1, v2, v10}, Landroid/view/animation/ClipRectLRAnimation;-><init>(IIII)V

    .line 557
    .local v13, "clipAnimLR":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 558
    const-wide/16 v22, 0x86

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 559
    new-instance v14, Landroid/view/animation/ClipRectTBAnimation;

    .line 560
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    sub-int v21, v12, v21

    sub-int v21, v21, v20

    .line 561
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v12

    sub-int v22, v22, v20

    .line 562
    const/16 v23, 0x0

    .line 559
    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v14, v0, v1, v2, v9}, Landroid/view/animation/ClipRectTBAnimation;-><init>(IIII)V

    .line 563
    .local v14, "clipAnimTB":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 564
    const-wide/16 v22, 0x150

    move-wide/from16 v0, v22

    invoke-virtual {v14, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 566
    new-instance v19, Landroid/view/animation/TranslateYAnimation;

    .line 567
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 566
    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v24

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateYAnimation;-><init>(IFIF)V

    .line 568
    .local v19, "translateY":Landroid/view/animation/TranslateYAnimation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateYAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 569
    const-wide/16 v22, 0x150

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateYAnimation;->setDuration(J)V

    .line 572
    const/16 v7, 0x54

    .line 573
    .local v7, "alphaDuration":I
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f000000    # 0.5f

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-direct {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 574
    .local v6, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v22, 0x54

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 577
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-direct {v15, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 578
    .local v15, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v15, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 579
    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 580
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 581
    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 582
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 583
    invoke-virtual {v15, v10, v9, v10, v9}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 584
    move-object v8, v15

    .line 612
    .end local v6    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v7    # "alphaDuration":I
    .end local v9    # "appHeight":I
    .end local v10    # "appWidth":I
    .end local v11    # "centerX":I
    .end local v12    # "centerY":I
    .end local v13    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v14    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v15    # "set":Landroid/view/animation/AnimationSet;
    .end local v18    # "t":F
    .end local v19    # "translateY":Landroid/view/animation/TranslateYAnimation;
    .end local v20    # "translationY":I
    .local v8, "anim":Landroid/view/animation/Animation;
    :goto_0
    return-object v8

    .line 587
    .end local v8    # "anim":Landroid/view/animation/Animation;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 593
    const-wide/16 v16, 0x150

    .line 596
    .local v16, "duration":J
    :goto_1
    const/16 v21, 0xe

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 597
    const/16 v21, 0xf

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 602
    :cond_2
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v8, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 603
    .restart local v8    # "anim":Landroid/view/animation/Animation;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 608
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 609
    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 610
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_0

    .line 590
    .end local v8    # "anim":Landroid/view/animation/Animation;
    .end local v16    # "duration":J
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 591
    .restart local v16    # "duration":J
    goto :goto_1

    .line 606
    :cond_3
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v8, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v8    # "anim":Landroid/view/animation/Animation;
    goto :goto_2

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
    .locals 16
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    .prologue
    .line 483
    const/4 v11, 0x0

    .line 484
    .local v11, "a":Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 486
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v6, v6

    move/from16 v0, p3

    int-to-float v8, v0

    div-float v5, v6, v8

    .line 487
    .local v5, "scaleW":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v6, v6

    move/from16 v0, p4

    int-to-float v8, v0

    div-float v7, v6, v8

    .line 488
    .local v7, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 489
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v9, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    .line 490
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v10, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    .line 488
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 491
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 493
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v12, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 494
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 496
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v13, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 497
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 498
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 499
    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 500
    move-object v11, v13

    .line 518
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v5    # "scaleW":F
    .end local v7    # "scaleH":F
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    .local v11, "a":Landroid/view/animation/Animation;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 524
    const-wide/16 v14, 0x150

    .line 527
    .local v14, "duration":J
    :goto_1
    invoke-virtual {v11, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 528
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 529
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 530
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 531
    return-object v11

    .line 501
    .end local v14    # "duration":J
    .local v11, "a":Landroid/view/animation/Animation;
    :cond_0
    const/16 v6, 0xe

    move/from16 v0, p1

    if-eq v0, v6, :cond_1

    .line 502
    const/16 v6, 0xf

    move/from16 v0, p1

    if-ne v0, v6, :cond_2

    .line 507
    :cond_1
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 508
    .local v11, "a":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    goto :goto_0

    .line 511
    .local v11, "a":Landroid/view/animation/Animation;
    :cond_2
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v11, "a":Landroid/view/animation/Animation;
    goto :goto_0

    .line 521
    :pswitch_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v14, v6

    .line 522
    .restart local v14    # "duration":J
    goto :goto_1

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, 0x0

    .line 383
    if-eqz p1, :cond_2

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_2

    .line 387
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 388
    .local v0, "packageName":Ljava/lang/String;
    :goto_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 389
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_0

    .line 390
    const-string/jumbo v0, "android"

    .line 394
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    .line 395
    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 394
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    return-object v2

    .line 387
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_1
    const-string/jumbo v0, "android"

    .restart local v0    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 397
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 403
    if-eqz p1, :cond_1

    .line 404
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    .line 405
    const-string/jumbo p1, "android"

    .line 409
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    .line 410
    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 409
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    return-object v0

    .line 412
    :cond_1
    return-object v0
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 450
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 451
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 452
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 453
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 454
    move v0, p2

    .line 457
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 458
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 460
    :cond_1
    return-object v3
.end method

.method private notifyAppTransitionCancelledLocked()V
    .locals 2

    .prologue
    .line 366
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked()V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    :cond_0
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .locals 2

    .prologue
    .line 360
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_0
    return-void
.end method

.method private notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "openToken"    # Landroid/os/IBinder;
    .param p2, "closeToken"    # Landroid/os/IBinder;
    .param p3, "openAnimation"    # Landroid/view/animation/Animation;
    .param p4, "closeAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 373
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_0
    return-void
.end method

.method private transitTypeToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1390
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1392
    :pswitch_0
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_NONE"

    return-object v0

    .line 1394
    :pswitch_1
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    return-object v0

    .line 1396
    :pswitch_2
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    return-object v0

    .line 1398
    :pswitch_3
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    return-object v0

    .line 1400
    :pswitch_4
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    return-object v0

    .line 1402
    :pswitch_5
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    return-object v0

    .line 1404
    :pswitch_6
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    return-object v0

    .line 1406
    :pswitch_7
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    return-object v0

    .line 1390
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method private updateSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1497
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1498
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 1499
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    sget-object v3, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0

    .line 1498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1502
    :cond_0
    const-string/jumbo v2, "animation_controls_exit_only"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    .line 1503
    const-string/jumbo v2, "animation_controls_reverse_exit"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    .line 1505
    const-string/jumbo v2, "animation_controls_duration"

    const/16 v3, 0x19

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xf

    iput v2, p0, Lcom/android/server/wm/AppTransition;->mAnimationDuration:I

    .line 1496
    return-void
.end method


# virtual methods
.method canSkipFirstFrame()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 970
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eq v2, v0, :cond_1

    .line 971
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    .line 972
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 970
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 972
    goto :goto_0

    :cond_1
    move v0, v1

    .line 970
    goto :goto_0
.end method

.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 338
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 339
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 336
    return-void
.end method

.method createAspectScaledThumbnailEnterExitAnimationLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 20
    .param p1, "thumbTransitState"    # I
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "orientation"    # I
    .param p5, "transit"    # I
    .param p6, "containingFrame"    # Landroid/graphics/Rect;
    .param p7, "contentInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 741
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    move/from16 v16, v0

    .line 742
    .local v16, "thumbWidthI":I
    if-lez v16, :cond_0

    .end local v16    # "thumbWidthI":I
    :goto_0
    move/from16 v0, v16

    int-to-float v15, v0

    .line 743
    .local v15, "thumbWidth":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 744
    .local v14, "thumbHeightI":I
    if-lez v14, :cond_1

    .end local v14    # "thumbHeightI":I
    :goto_1
    int-to-float v13, v14

    .line 747
    .local v13, "thumbHeight":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 748
    .local v2, "scale":F
    const/4 v11, 0x0

    .line 750
    .local v11, "scaledTopDecor":I
    packed-switch p1, :pswitch_data_0

    .line 850
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Invalid thumbnail transition state"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 742
    .end local v2    # "scale":F
    .end local v11    # "scaledTopDecor":I
    .end local v13    # "thumbHeight":F
    .end local v15    # "thumbWidth":F
    .restart local v16    # "thumbWidthI":I
    :cond_0
    const/16 v16, 0x1

    goto :goto_0

    .line 744
    .end local v16    # "thumbWidthI":I
    .restart local v14    # "thumbHeightI":I
    .restart local v15    # "thumbWidth":F
    :cond_1
    const/4 v14, 0x1

    goto :goto_1

    .line 753
    .end local v14    # "thumbHeightI":I
    .restart local v2    # "scale":F
    .restart local v11    # "scaledTopDecor":I
    .restart local v13    # "thumbHeight":F
    :pswitch_0
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_2

    .line 755
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v2, v15, v3

    .line 756
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    .line 757
    div-float v3, v13, v2

    float-to-int v0, v3

    move/from16 v18, v0

    .line 758
    .local v18, "unscaledThumbHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v5, v5, v18

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 771
    .end local v18    # "unscaledThumbHeight":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 773
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 775
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 776
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v6, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v6

    .line 777
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v8, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v7

    move v4, v2

    .line 775
    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 778
    .local v1, "scaleAnim":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v10, v3, v5}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 779
    .local v10, "clipAnim":Landroid/view/animation/Animation;
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    neg-int v6, v11

    int-to-float v6, v6

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v5, v6, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 781
    .local v17, "translateAnim":Landroid/view/animation/Animation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 782
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 783
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 784
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 785
    move-object v4, v12

    .line 853
    .end local v1    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v10    # "clipAnim":Landroid/view/animation/Animation;
    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    .end local v17    # "translateAnim":Landroid/view/animation/Animation;
    .local v4, "a":Landroid/view/animation/Animation;
    :goto_3
    const/16 v3, 0x150

    .line 854
    const/16 v5, 0x150

    .line 853
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 856
    .local v7, "duration":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v3, p0

    move/from16 v5, p2

    move/from16 v6, p3

    .line 855
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 763
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v7    # "duration":I
    :cond_2
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v3

    int-to-float v3, v3

    div-float v2, v13, v3

    .line 764
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    .line 765
    div-float v3, v15, v2

    float-to-int v0, v3

    move/from16 v19, v0

    .line 766
    .local v19, "unscaledThumbWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v5, v5, v19

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 768
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 790
    .end local v19    # "unscaledThumbWidth":I
    :pswitch_1
    const/16 v3, 0xe

    move/from16 v0, p5

    if-ne v0, v3, :cond_3

    .line 793
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    .line 795
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_3
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    .line 801
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    const/16 v3, 0xe

    move/from16 v0, p5

    if-ne v0, v3, :cond_4

    .line 804
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    .line 806
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_4
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    .line 812
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_3
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_5

    .line 814
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v2, v15, v3

    .line 815
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    .line 816
    div-float v3, v13, v2

    float-to-int v0, v3

    move/from16 v18, v0

    .line 817
    .restart local v18    # "unscaledThumbHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v5, v5, v18

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 830
    .end local v18    # "unscaledThumbHeight":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 832
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 834
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 835
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v3, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v8

    .line 836
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v3, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object v3, v1

    move v5, v2

    move v7, v2

    .line 834
    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 837
    .restart local v1    # "scaleAnim":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v10, v3, v5}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 838
    .restart local v10    # "clipAnim":Landroid/view/animation/Animation;
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    neg-int v8, v11

    int-to-float v8, v8

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v5, v6, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 840
    .restart local v17    # "translateAnim":Landroid/view/animation/Animation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 841
    .restart local v12    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 842
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 843
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 845
    move-object v4, v12

    .line 846
    .restart local v4    # "a":Landroid/view/animation/Animation;
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    goto/16 :goto_3

    .line 822
    .end local v1    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v10    # "clipAnim":Landroid/view/animation/Animation;
    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    .end local v17    # "translateAnim":Landroid/view/animation/Animation;
    :cond_5
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v3

    int-to-float v3, v3

    div-float v2, v13, v3

    .line 823
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    .line 824
    div-float v3, v15, v2

    float-to-int v0, v3

    move/from16 v19, v0

    .line 825
    .restart local v19    # "unscaledThumbWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v5, v5, v19

    iput v5, v3, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    .line 750
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method createThumbnailAspectScaleAnimationLocked(IIII)Landroid/view/animation/Animation;
    .locals 21
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "deviceWidth"    # I
    .param p4, "transit"    # I

    .prologue
    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 677
    .local v16, "thumbWidthI":I
    if-lez v16, :cond_0

    .end local v16    # "thumbWidthI":I
    :goto_0
    move/from16 v0, v16

    int-to-float v15, v0

    .line 678
    .local v15, "thumbWidth":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 679
    .local v14, "thumbHeightI":I
    if-lez v14, :cond_1

    .end local v14    # "thumbHeightI":I
    :goto_1
    int-to-float v13, v14

    .line 681
    .local v13, "thumbHeight":F
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v4, v3, v15

    .line 682
    .local v4, "scaleW":F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v20, v0

    .line 683
    .local v20, "unscaledWidth":F
    mul-float v18, v13, v4

    .line 684
    .local v18, "unscaledHeight":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    int-to-float v3, v3

    sub-float v5, v18, v13

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sub-float v19, v3, v5

    .line 685
    .local v19, "unscaledStartY":F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v3, :cond_2

    .line 687
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .line 688
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v15, v5

    add-float v7, v3, v5

    .line 689
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v13, v5

    add-float v8, v3, v5

    .line 687
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move v6, v4

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 690
    .local v2, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 691
    const-wide/16 v8, 0x150

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 692
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v11, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 693
    .local v11, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 694
    const-wide/16 v8, 0x150

    invoke-virtual {v11, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 695
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v0, v19

    neg-float v8, v0

    .line 696
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    .line 695
    add-float/2addr v8, v9

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 697
    .local v17, "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 698
    const-wide/16 v8, 0x150

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 701
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 702
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 703
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 704
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 705
    move-object v6, v12

    .line 730
    .local v6, "a":Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    .line 729
    const/4 v9, 0x0

    move-object/from16 v5, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 677
    .end local v2    # "scale":Landroid/view/animation/Animation;
    .end local v4    # "scaleW":F
    .end local v6    # "a":Landroid/view/animation/Animation;
    .end local v11    # "alpha":Landroid/view/animation/Animation;
    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    .end local v13    # "thumbHeight":F
    .end local v15    # "thumbWidth":F
    .end local v17    # "translate":Landroid/view/animation/Animation;
    .end local v18    # "unscaledHeight":F
    .end local v19    # "unscaledStartY":F
    .end local v20    # "unscaledWidth":F
    .restart local v16    # "thumbWidthI":I
    :cond_0
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 679
    .end local v16    # "thumbWidthI":I
    .restart local v14    # "thumbHeightI":I
    .restart local v15    # "thumbWidth":F
    :cond_1
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 708
    .end local v14    # "thumbHeightI":I
    .restart local v4    # "scaleW":F
    .restart local v13    # "thumbHeight":F
    .restart local v18    # "unscaledHeight":F
    .restart local v19    # "unscaledStartY":F
    .restart local v20    # "unscaledWidth":F
    :cond_2
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .line 709
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v15, v5

    add-float v8, v3, v5

    .line 710
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v13, v5

    add-float v9, v3, v5

    .line 708
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, v2

    move v6, v4

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 711
    .restart local v2    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 712
    const-wide/16 v8, 0x150

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 713
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v11, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 714
    .restart local v11    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 715
    const-wide/16 v8, 0x150

    invoke-virtual {v11, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 716
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v0, v19

    neg-float v7, v0

    .line 717
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    .line 716
    add-float/2addr v7, v8

    .line 717
    const/4 v8, 0x0

    .line 716
    move-object/from16 v0, v17

    invoke-direct {v0, v3, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 718
    .restart local v17    # "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 719
    const-wide/16 v8, 0x150

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 722
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 723
    .restart local v12    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 724
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 725
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 726
    move-object v6, v12

    .restart local v6    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_2
.end method

.method createThumbnailEnterExitAnimationLocked(IIII)Landroid/view/animation/Animation;
    .locals 21
    .param p1, "thumbTransitState"    # I
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .prologue
    .line 906
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 907
    .local v20, "thumbWidthI":I
    if-lez v20, :cond_0

    .end local v20    # "thumbWidthI":I
    :goto_0
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v19, v0

    .line 908
    .local v19, "thumbWidth":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 909
    .local v18, "thumbHeightI":I
    if-lez v18, :cond_1

    .end local v18    # "thumbHeightI":I
    :goto_1
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v17, v0

    .line 911
    .local v17, "thumbHeight":F
    packed-switch p1, :pswitch_data_0

    .line 958
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Invalid thumbnail transition state"

    invoke-direct {v6, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 907
    .end local v17    # "thumbHeight":F
    .end local v19    # "thumbWidth":F
    .restart local v20    # "thumbWidthI":I
    :cond_0
    const/16 v20, 0x1

    goto :goto_0

    .line 909
    .end local v20    # "thumbWidthI":I
    .restart local v18    # "thumbHeightI":I
    .restart local v19    # "thumbWidth":F
    :cond_1
    const/16 v18, 0x1

    goto :goto_1

    .line 914
    .end local v18    # "thumbHeightI":I
    .restart local v17    # "thumbHeight":F
    :pswitch_0
    move/from16 v0, p2

    int-to-float v6, v0

    div-float v5, v19, v6

    .line 915
    .local v5, "scaleW":F
    move/from16 v0, p3

    int-to-float v6, v0

    div-float v7, v17, v6

    .line 916
    .local v7, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 917
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v9, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    .line 918
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v10, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    .line 916
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 961
    .end local v5    # "scaleW":F
    .end local v7    # "scaleH":F
    .local v4, "a":Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v6

    return-object v6

    .line 923
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_1
    const/16 v6, 0xe

    move/from16 v0, p4

    if-ne v0, v6, :cond_2

    .line 927
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 930
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_2
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 937
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 938
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 942
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_3
    move/from16 v0, p2

    int-to-float v6, v0

    div-float v5, v19, v6

    .line 943
    .restart local v5    # "scaleW":F
    move/from16 v0, p3

    int-to-float v6, v0

    div-float v7, v17, v6

    .line 944
    .restart local v7    # "scaleH":F
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    .line 945
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v6, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v13

    .line 946
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v6, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    move v10, v5

    move v12, v7

    .line 944
    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 948
    .local v8, "scale":Landroid/view/animation/Animation;
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v15, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 950
    .local v15, "alpha":Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 951
    .local v16, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 952
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 953
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 954
    move-object/from16 v4, v16

    .line 955
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 911
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method createThumbnailScaleAnimationLocked(III)Landroid/view/animation/Animation;
    .locals 19
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "transit"    # I

    .prologue
    .line 865
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 866
    .local v17, "thumbWidthI":I
    if-lez v17, :cond_0

    .end local v17    # "thumbWidthI":I
    :goto_0
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 867
    .local v16, "thumbWidth":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 868
    .local v15, "thumbHeightI":I
    if-lez v15, :cond_1

    .end local v15    # "thumbHeightI":I
    :goto_1
    int-to-float v14, v15

    .line 870
    .local v14, "thumbHeight":F
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_2

    .line 872
    move/from16 v0, p1

    int-to-float v7, v0

    div-float v6, v7, v16

    .line 873
    .local v6, "scaleW":F
    move/from16 v0, p2

    int-to-float v7, v0

    div-float v8, v7, v14

    .line 874
    .local v8, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 875
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v10, 0x3f800000    # 1.0f

    div-float/2addr v10, v6

    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    .line 876
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v8

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    .line 874
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 877
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 879
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v12, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 880
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 883
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v13, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 884
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 885
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 886
    move-object v5, v13

    .line 896
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    .local v5, "a":Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v7

    return-object v7

    .line 866
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v14    # "thumbHeight":F
    .end local v16    # "thumbWidth":F
    .restart local v17    # "thumbWidthI":I
    :cond_0
    const/16 v17, 0x1

    goto :goto_0

    .line 868
    .end local v17    # "thumbWidthI":I
    .restart local v15    # "thumbHeightI":I
    .restart local v16    # "thumbWidth":F
    :cond_1
    const/4 v15, 0x1

    goto :goto_1

    .line 889
    .end local v15    # "thumbHeightI":I
    .restart local v14    # "thumbHeight":F
    :cond_2
    move/from16 v0, p1

    int-to-float v7, v0

    div-float v6, v7, v16

    .line 890
    .restart local v6    # "scaleW":F
    move/from16 v0, p2

    int-to-float v7, v0

    div-float v8, v7, v14

    .line 891
    .restart local v8    # "scaleH":F
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 892
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v6

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    .line 893
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v18, 0x3f800000    # 1.0f

    div-float v18, v18, v8

    move/from16 v0, v18

    invoke-static {v11, v0}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    .line 891
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1414
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1415
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1416
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_0

    .line 1417
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1418
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1420
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 1463
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1

    .line 1464
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1465
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1413
    :cond_1
    return-void

    .line 1422
    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1423
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1424
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1425
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1426
    const-string/jumbo v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1427
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1430
    :pswitch_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1431
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1432
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1433
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1436
    :pswitch_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1437
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1438
    const-string/jumbo v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1439
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1440
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1441
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1442
    const-string/jumbo v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1443
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_0

    .line 1449
    :pswitch_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1450
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1451
    const-string/jumbo v0, " mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1452
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1453
    const-string/jumbo v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1454
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1455
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1456
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1457
    const-string/jumbo v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1458
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1459
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1460
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_0

    .line 1420
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method freeze()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    .line 344
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 345
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 346
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked()V

    .line 342
    return-void
.end method

.method getAppTransition()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getNextAppTransitionThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getStartingX()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    return v0
.end method

.method getStartingY()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    return v0
.end method

.method getThumbnailTransitionState(Z)I
    .locals 1
    .param p1, "enter"    # Z

    .prologue
    .line 654
    if-eqz p1, :cond_1

    .line 655
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_0

    .line 656
    const/4 v0, 0x0

    return v0

    .line 658
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 661
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_2

    .line 662
    const/4 v0, 0x1

    return v0

    .line 664
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method goodToGo(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/AppWindowAnimator;)V
    .locals 4
    .param p1, "openingAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "closingAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;

    .prologue
    const/4 v0, 0x0

    .line 327
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 328
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 330
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object v3, v1

    .line 331
    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object v2, v1

    .line 332
    :goto_1
    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 333
    :goto_2
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 329
    :cond_0
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 326
    return-void

    :cond_1
    move-object v3, v0

    .line 330
    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 331
    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 332
    goto :goto_2
.end method

.method isNextThumbnailTransitionAspectScaled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 300
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 301
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 301
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNextThumbnailTransitionScaleUp()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method isReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 270
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v1, v0, :cond_0

    .line 271
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRunning()Z
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTimeout()Z
    .locals 2

    .prologue
    .line 287
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionEqual(I)Z
    .locals 1
    .param p1, "transit"    # I

    .prologue
    .line 258
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionNone()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 254
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isTransitionSet()Z
    .locals 2

    .prologue
    .line 250
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .locals 15
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "appWidth"    # I
    .param p5, "appHeight"    # I
    .param p6, "orientation"    # I
    .param p7, "containingFrame"    # Landroid/graphics/Rect;
    .param p8, "contentInsets"    # Landroid/graphics/Rect;
    .param p9, "appFrame"    # Landroid/graphics/Rect;
    .param p10, "isVoiceInteraction"    # Z

    .prologue
    .line 978
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 980
    if-eqz p10, :cond_2

    const/4 v4, 0x6

    move/from16 v0, p2

    if-eq v0, v4, :cond_0

    .line 981
    const/16 v4, 0x8

    move/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 983
    :cond_0
    if-eqz p3, :cond_4

    .line 984
    const v4, 0x10a00a2

    .line 983
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v4}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v12

    .line 1217
    :goto_1
    return-object v12

    .line 982
    :cond_1
    const/16 v4, 0xa

    move/from16 v0, p2

    if-eq v0, v4, :cond_0

    .line 990
    :cond_2
    if-eqz p10, :cond_6

    const/4 v4, 0x7

    move/from16 v0, p2

    if-eq v0, v4, :cond_3

    .line 991
    const/16 v4, 0x9

    move/from16 v0, p2

    if-ne v0, v4, :cond_5

    .line 993
    :cond_3
    if-eqz p3, :cond_7

    .line 994
    const v4, 0x10a00a0

    .line 993
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v4}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v12

    .local v12, "a":Landroid/view/animation/Animation;
    goto :goto_1

    .line 985
    .end local v12    # "a":Landroid/view/animation/Animation;
    :cond_4
    const v4, 0x10a00a3

    goto :goto_0

    .line 992
    :cond_5
    const/16 v4, 0xb

    move/from16 v0, p2

    if-eq v0, v4, :cond_3

    .line 1000
    :cond_6
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 1001
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p3, :cond_8

    .line 1002
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1001
    :goto_3
    invoke-direct {p0, v5, v4}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v12

    .restart local v12    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    .line 995
    .end local v12    # "a":Landroid/view/animation/Animation;
    :cond_7
    const v4, 0x10a00a1

    goto :goto_2

    .line 1002
    :cond_8
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    goto :goto_3

    .line 1008
    :cond_9
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_a

    .line 1009
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v12

    .restart local v12    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    .line 1015
    .end local v12    # "a":Landroid/view/animation/Animation;
    :cond_a
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_b

    .line 1016
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p9

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/AppTransition;->createClipRevealAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v12

    .restart local v12    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    .line 1021
    .end local v12    # "a":Landroid/view/animation/Animation;
    :cond_b
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    .line 1022
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v12

    .restart local v12    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    .line 1028
    .end local v12    # "a":Landroid/view/animation/Animation;
    :cond_c
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_d

    .line 1029
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_f

    .line 1031
    :cond_d
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_e

    const/4 v4, 0x1

    .line 1030
    :goto_4
    iput-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1032
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v4

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p2

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(IIII)Landroid/view/animation/Animation;

    move-result-object v12

    .restart local v12    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 1031
    .end local v12    # "a":Landroid/view/animation/Animation;
    :cond_e
    const/4 v4, 0x0

    goto :goto_4

    .line 1042
    :cond_f
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_10

    .line 1043
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_12

    .line 1045
    :cond_10
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_11

    const/4 v4, 0x1

    .line 1044
    :goto_5
    iput-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1047
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v5

    move-object v4, p0

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p2

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 1046
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v12

    .restart local v12    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 1045
    .end local v12    # "a":Landroid/view/animation/Animation;
    :cond_11
    const/4 v4, 0x0

    goto :goto_5

    .line 1058
    :cond_12
    const/4 v14, 0x0

    .line 1059
    .local v14, "animAttr":I
    packed-switch p2, :pswitch_data_0

    .line 1203
    :goto_6
    if-eqz v14, :cond_35

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v14}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v12

    .line 1204
    :goto_7
    if-eqz v12, :cond_13

    .line 1205
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mAnimationDuration:I

    if-lez v4, :cond_13

    .line 1206
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1209
    :cond_13
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    goto/16 :goto_1

    .line 1061
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-eqz v4, :cond_15

    .line 1062
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1063
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-boolean v5, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v6, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/temasek/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v13

    .line 1064
    .local v13, "animArray":[I
    if-eqz p3, :cond_14

    .line 1065
    const/4 v4, 0x1

    aget v14, v13, v4

    goto :goto_6

    .line 1066
    :cond_14
    const/4 v4, 0x0

    aget v14, v13, v4

    goto :goto_6

    .line 1068
    .end local v13    # "animArray":[I
    :cond_15
    if-eqz p3, :cond_16

    .line 1069
    const/4 v14, 0x4

    goto :goto_6

    .line 1070
    :cond_16
    const/4 v14, 0x5

    goto :goto_6

    .line 1074
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-eqz v4, :cond_18

    .line 1075
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1076
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-boolean v5, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v6, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/temasek/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v13

    .line 1077
    .restart local v13    # "animArray":[I
    if-eqz p3, :cond_17

    .line 1078
    const/4 v4, 0x1

    aget v14, v13, v4

    goto :goto_6

    .line 1079
    :cond_17
    const/4 v4, 0x0

    aget v14, v13, v4

    goto :goto_6

    .line 1081
    .end local v13    # "animArray":[I
    :cond_18
    if-eqz p3, :cond_19

    .line 1082
    const/4 v14, 0x6

    goto :goto_6

    .line 1083
    :cond_19
    const/4 v14, 0x7

    goto :goto_6

    .line 1087
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    if-eqz v4, :cond_1b

    .line 1088
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1089
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-boolean v5, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v6, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/temasek/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v13

    .line 1090
    .restart local v13    # "animArray":[I
    if-eqz p3, :cond_1a

    .line 1091
    const/4 v4, 0x1

    aget v14, v13, v4

    goto/16 :goto_6

    .line 1092
    :cond_1a
    const/4 v4, 0x0

    aget v14, v13, v4

    goto/16 :goto_6

    .line 1094
    .end local v13    # "animArray":[I
    :cond_1b
    if-eqz p3, :cond_1c

    .line 1095
    const/16 v14, 0x8

    goto/16 :goto_6

    .line 1096
    :cond_1c
    const/16 v14, 0x9

    goto/16 :goto_6

    .line 1100
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    if-eqz v4, :cond_1e

    .line 1101
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1102
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-boolean v5, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v6, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/temasek/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v13

    .line 1103
    .restart local v13    # "animArray":[I
    if-eqz p3, :cond_1d

    .line 1104
    const/4 v4, 0x1

    aget v14, v13, v4

    goto/16 :goto_6

    .line 1105
    :cond_1d
    const/4 v4, 0x0

    aget v14, v13, v4

    goto/16 :goto_6

    .line 1107
    .end local v13    # "animArray":[I
    :cond_1e
    if-eqz p3, :cond_1f

    .line 1108
    const/16 v14, 0xa

    goto/16 :goto_6

    .line 1109
    :cond_1f
    const/16 v14, 0xb

    goto/16 :goto_6

    .line 1113
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    if-eqz v4, :cond_21

    .line 1114
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1115
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    iget-boolean v5, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v6, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/temasek/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v13

    .line 1116
    .restart local v13    # "animArray":[I
    if-eqz p3, :cond_20

    .line 1117
    const/4 v4, 0x1

    aget v14, v13, v4

    goto/16 :goto_6

    .line 1118
    :cond_20
    const/4 v4, 0x0

    aget v14, v13, v4

    goto/16 :goto_6

    .line 1120
    .end local v13    # "animArray":[I
    :cond_21
    if-eqz p3, :cond_22

    .line 1121
    const/16 v14, 0xc

    goto/16 :goto_6

    .line 1122
    :cond_22
    const/16 v14, 0xd

    goto/16 :goto_6

    .line 1126
    :pswitch_5
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    if-eqz v4, :cond_24

    .line 1127
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1128
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-boolean v5, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v6, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/temasek/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v13

    .line 1129
    .restart local v13    # "animArray":[I
    if-eqz p3, :cond_23

    .line 1130
    const/4 v4, 0x1

    aget v14, v13, v4

    goto/16 :goto_6

    .line 1131
    :cond_23
    const/4 v4, 0x0

    aget v14, v13, v4

    goto/16 :goto_6

    .line 1133
    .end local v13    # "animArray":[I
    :cond_24
    if-eqz p3, :cond_25

    .line 1134
    const/16 v14, 0xe

    goto/16 :goto_6

    .line 1135
    :cond_25
    const/16 v14, 0xf

    goto/16 :goto_6

    .line 1139
    :pswitch_6
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    if-eqz v4, :cond_27

    .line 1140
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1141
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    iget-boolean v5, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v6, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/temasek/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v13

    .line 1142
    .restart local v13    # "animArray":[I
    if-eqz p3, :cond_26

    .line 1143
    const/4 v4, 0x1

    aget v14, v13, v4

    goto/16 :goto_6

    .line 1144
    :cond_26
    const/4 v4, 0x0

    aget v14, v13, v4

    goto/16 :goto_6

    .line 1146
    .end local v13    # "animArray":[I
    :cond_27
    if-eqz p3, :cond_28

    .line 1147
    const/16 v14, 0x10

    goto/16 :goto_6

    .line 1148
    :cond_28
    const/16 v14, 0x11

    goto/16 :goto_6

    .line 1152
    :pswitch_7
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    if-eqz v4, :cond_2a

    .line 1153
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1154
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    iget-boolean v5, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v6, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/temasek/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v13

    .line 1155
    .restart local v13    # "animArray":[I
    if-eqz p3, :cond_29

    .line 1156
    const/4 v4, 0x1

    aget v14, v13, v4

    goto/16 :goto_6

    .line 1157
    :cond_29
    const/4 v4, 0x0

    aget v14, v13, v4

    goto/16 :goto_6

    .line 1159
    .end local v13    # "animArray":[I
    :cond_2a
    if-eqz p3, :cond_2b

    .line 1160
    const/16 v14, 0x12

    goto/16 :goto_6

    .line 1161
    :cond_2b
    const/16 v14, 0x13

    goto/16 :goto_6

    .line 1165
    :pswitch_8
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    if-eqz v4, :cond_2d

    .line 1166
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1167
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-boolean v5, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v6, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/temasek/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v13

    .line 1168
    .restart local v13    # "animArray":[I
    if-eqz p3, :cond_2c

    .line 1169
    const/4 v4, 0x1

    aget v14, v13, v4

    goto/16 :goto_6

    .line 1170
    :cond_2c
    const/4 v4, 0x0

    aget v14, v13, v4

    goto/16 :goto_6

    .line 1172
    .end local v13    # "animArray":[I
    :cond_2d
    if-eqz p3, :cond_2e

    .line 1173
    const/16 v14, 0x14

    goto/16 :goto_6

    .line 1174
    :cond_2e
    const/16 v14, 0x15

    goto/16 :goto_6

    .line 1178
    :pswitch_9
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    if-eqz v4, :cond_30

    .line 1179
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1180
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    iget-boolean v5, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v6, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/temasek/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v13

    .line 1181
    .restart local v13    # "animArray":[I
    if-eqz p3, :cond_2f

    .line 1182
    const/4 v4, 0x1

    aget v14, v13, v4

    goto/16 :goto_6

    .line 1183
    :cond_2f
    const/4 v4, 0x0

    aget v14, v13, v4

    goto/16 :goto_6

    .line 1185
    .end local v13    # "animArray":[I
    :cond_30
    if-eqz p3, :cond_31

    .line 1186
    const/16 v14, 0x16

    goto/16 :goto_6

    .line 1187
    :cond_31
    const/16 v14, 0x17

    goto/16 :goto_6

    .line 1191
    :pswitch_a
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    if-eqz v4, :cond_33

    .line 1192
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1193
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    iget-boolean v5, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v6, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/temasek/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v13

    .line 1194
    .restart local v13    # "animArray":[I
    if-eqz p3, :cond_32

    .line 1195
    const/4 v4, 0x1

    aget v14, v13, v4

    goto/16 :goto_6

    .line 1196
    :cond_32
    const/4 v4, 0x0

    aget v14, v13, v4

    goto/16 :goto_6

    .line 1198
    .end local v13    # "animArray":[I
    :cond_33
    if-eqz p3, :cond_34

    .line 1199
    const/16 v14, 0x19

    goto/16 :goto_6

    .line 1200
    :cond_34
    const/16 v14, 0x18

    goto/16 :goto_6

    .line 1203
    :cond_35
    const/4 v12, 0x0

    .local v12, "a":Landroid/view/animation/Animation;
    goto/16 :goto_7

    .line 1059
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 6
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 418
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 419
    iget-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    if-eqz v3, :cond_1

    .line 420
    move v0, p2

    .line 429
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 430
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 422
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 423
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 424
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 425
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    goto :goto_0

    .line 432
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_2
    return-object v5
.end method

.method loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 436
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 437
    .local v0, "context":Landroid/content/Context;
    if-ltz p2, :cond_1

    .line 438
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    .line 439
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_0

    .line 440
    iget-object v0, v1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 442
    :cond_0
    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 444
    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_1
    return-object v2
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 354
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_0
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    .prologue
    .line 1307
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1309
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1310
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    .line 1306
    :goto_0
    return-void

    .line 1312
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_0
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1229
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1231
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1233
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1234
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1235
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1236
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1228
    :goto_0
    return-void

    .line 1238
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_0
.end method

.method overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V
    .locals 1
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "scaleUp"    # Z

    .prologue
    .line 1289
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1290
    if-eqz p7, :cond_0

    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1293
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1294
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1295
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1296
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1297
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 1298
    iput p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 1299
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1300
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1288
    :goto_1
    return-void

    .line 1291
    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    .line 1302
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    .line 1259
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1261
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1262
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1263
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 1264
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 1265
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1258
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 1244
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1246
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1247
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1248
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1249
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1250
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 1251
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 1252
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1253
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1243
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
    .locals 1
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z

    .prologue
    .line 1272
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1273
    if-eqz p5, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1276
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1277
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1278
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1279
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1280
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1281
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1271
    :goto_1
    return-void

    .line 1274
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 1283
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1
.end method

.method postAnimationCallback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1221
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1223
    iput-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1220
    :cond_0
    return-void
.end method

.method prepare()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 320
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    .line 321
    const/4 v0, 0x1

    return v0

    .line 323
    :cond_0
    return v1
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .locals 6
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .prologue
    .line 637
    packed-switch p4, :pswitch_data_0

    .line 643
    const/16 v4, 0x150

    .line 647
    .local v4, "duration":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 646
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 640
    .end local v4    # "duration":I
    :pswitch_0
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .restart local v4    # "duration":I
    goto :goto_0

    .line 637
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "duration"    # I
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 620
    if-lez p4, :cond_0

    .line 621
    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 623
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 624
    invoke-virtual {p1, p5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 625
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 626
    return-object p1
.end method

.method registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowManagerInternal$AppTransitionListener;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    return-void
.end method

.method setAppTransition(I)V
    .locals 0
    .param p1, "transit"    # I

    .prologue
    .line 266
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 265
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 1470
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 1469
    return-void
.end method

.method setIdle()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 282
    return-void
.end method

.method setReady()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 274
    return-void
.end method

.method setTimeout()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 290
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNextAppTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
