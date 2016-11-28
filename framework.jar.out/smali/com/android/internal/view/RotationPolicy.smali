.class public final Lcom/android/internal/view/RotationPolicy;
.super Ljava/lang/Object;
.source "RotationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
    }
.end annotation


# static fields
.field private static final CURRENT_ROTATION:I = -0x1

.field private static final NATURAL_ROTATION:I

.field private static final TAG:Ljava/lang/String; = "RotationPolicy"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-string/jumbo v0, "persist.panel.orientation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x5a

    .line 45
    sput v0, Lcom/android/internal/view/RotationPolicy;->NATURAL_ROTATION:I

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRotationLockOrientation(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 77
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->isCurrentRotationAllowed(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 78
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 79
    .local v1, "size":Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 81
    .local v2, "wm":Landroid/view/IWindowManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v3, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 82
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v3, v4, :cond_0

    .line 83
    const/4 v3, 0x1

    .line 82
    :goto_0
    return v3

    .line 83
    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "RotationPolicy"

    const-string/jumbo v4, "Unable to get the display size"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "size":Landroid/graphics/Point;
    .end local v2    # "wm":Landroid/view/IWindowManager;
    :cond_1
    return v5
.end method

.method private static isCurrentRotationAllowed(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 160
    const-string/jumbo v5, "accelerometer_rotation_angles"

    const/4 v6, -0x1

    .line 159
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 161
    .local v2, "userRotationAngles":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 162
    const v5, 0x112003e

    .line 161
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 163
    .local v0, "allowAllRotations":Z
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    .line 165
    .local v3, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v3}, Landroid/view/IWindowManager;->getRotation()I

    move-result v4

    invoke-static {v4, v2, v0}, Lcom/android/internal/view/RotationPolicy;->isRotationAllowed(IIZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "exc":Landroid/os/RemoteException;
    const-string/jumbo v4, "RotationPolicy"

    const-string/jumbo v5, "Unable to getWindowManagerService.getRotation()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v4, 0x0

    return v4
.end method

.method public static isRotationAllowed(IIZ)Z
    .locals 3
    .param p0, "rotation"    # I
    .param p1, "userRotationAngles"    # I
    .param p2, "allowAllRotations"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 139
    if-gez p1, :cond_0

    .line 141
    if-eqz p2, :cond_1

    .line 142
    const/16 p1, 0xf

    .line 145
    :cond_0
    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 155
    return v1

    .line 143
    :cond_1
    const/16 p1, 0xb

    goto :goto_0

    .line 147
    :pswitch_0
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 149
    :pswitch_1
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_3

    :goto_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 151
    :pswitch_2
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_4

    :goto_3
    return v0

    :cond_4
    move v0, v1

    goto :goto_3

    .line 153
    :pswitch_3
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_5

    :goto_4
    return v0

    :cond_5
    move v0, v1

    goto :goto_4

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isRotationLockToggleVisible(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 96
    const v4, 0x112003d

    .line 95
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 97
    .local v0, "forceSupportRotationLock":Z
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 99
    const-string/jumbo v4, "hide_rotation_lock_toggle_for_accessibility"

    .line 100
    const/4 v5, -0x2

    .line 98
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 98
    goto :goto_0

    :cond_2
    move v1, v2

    .line 97
    goto :goto_0
.end method

.method public static isRotationLocked(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 108
    const-string/jumbo v2, "accelerometer_rotation"

    const/4 v3, -0x2

    .line 107
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isRotationSupported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 61
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "android.hardware.sensor.accelerometer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string/jumbo v1, "android.hardware.screen.portrait"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 61
    if-eqz v1, :cond_0

    .line 63
    const-string/jumbo v1, "android.hardware.screen.landscape"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 61
    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 65
    const v2, 0x112003c

    .line 64
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 61
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .prologue
    .line 195
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    .line 194
    return-void
.end method

.method public static registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 205
    const-string/jumbo v1, "accelerometer_rotation"

    .line 204
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 206
    iget-object v2, p1, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->mObserver:Landroid/database/ContentObserver;

    .line 204
    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 208
    const-string/jumbo v1, "hide_rotation_lock_toggle_for_accessibility"

    .line 207
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 209
    iget-object v2, p1, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->mObserver:Landroid/database/ContentObserver;

    .line 207
    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 203
    return-void
.end method

.method public static setRotationLock(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 116
    const-string/jumbo v2, "hide_rotation_lock_toggle_for_accessibility"

    const/4 v3, 0x0

    .line 117
    const/4 v4, -0x2

    .line 115
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 119
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->isCurrentRotationAllowed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const/4 v0, -0x1

    .line 121
    .local v0, "rotation":I
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZI)V

    .line 114
    return-void

    .line 120
    .end local v0    # "rotation":I
    :cond_0
    sget v0, Lcom/android/internal/view/RotationPolicy;->NATURAL_ROTATION:I

    .restart local v0    # "rotation":I
    goto :goto_0
.end method

.method private static setRotationLock(ZI)V
    .locals 1
    .param p0, "enabled"    # Z
    .param p1, "rotation"    # I

    .prologue
    .line 173
    new-instance v0, Lcom/android/internal/view/RotationPolicy$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/view/RotationPolicy$1;-><init>(ZI)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method public static setRotationLockForAccessibility(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 131
    const-string/jumbo v2, "hide_rotation_lock_toggle_for_accessibility"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 132
    :goto_0
    const/4 v3, -0x2

    .line 130
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 134
    sget v0, Lcom/android/internal/view/RotationPolicy;->NATURAL_ROTATION:I

    invoke-static {p1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZI)V

    .line 129
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 216
    return-void
.end method
