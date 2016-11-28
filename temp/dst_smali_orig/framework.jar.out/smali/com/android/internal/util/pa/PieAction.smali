.class public Lcom/android/internal/util/pa/PieAction;
.super Ljava/lang/Object;
.source "PieAction.java"


# static fields
.field private static final MSG_INJECT_KEY_DOWN:I = 0x42a

.field private static final MSG_INJECT_KEY_UP:I = 0x42b


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActionKeyEvent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    const-string v0, "##home##"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "##back##"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "##menu##"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "**menu_big**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "**null**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static processAction(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "isLongpress"    # Z

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/pa/PieAction;->processActionWithOptions(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static processActionWithOptions(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "isLongpress"    # Z
    .param p3, "collapseShade"    # Z

    .prologue
    if-eqz p1, :cond_0

    const-string v8, "**null**"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v6, 0x0

    .local v6, "isKeyguardShowing":Z
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .end local v6    # "isKeyguardShowing":Z
    :goto_0
    const-string v8, "statusbar"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .local v0, "barService":Lcom/android/internal/statusbar/IStatusBarService;
    if-nez v0, :cond_2

    return-void

    .end local v0    # "barService":Lcom/android/internal/statusbar/IStatusBarService;
    .restart local v6    # "isKeyguardShowing":Z
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "Action"

    const-string v9, "Error getting window manager service"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v6    # "isKeyguardShowing":Z
    .restart local v0    # "barService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_2
    const-string v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v7

    .local v7, "windowManagerService":Landroid/view/IWindowManager;
    if-nez v7, :cond_3

    return-void

    :cond_3
    const/4 v5, 0x0

    .local v5, "isKeyguardSecure":Z
    :try_start_1
    invoke-interface {v7}, Landroid/view/IWindowManager;->isKeyguardSecure()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .end local v5    # "isKeyguardSecure":Z
    :goto_1
    if-eqz p3, :cond_4

    const-string v8, "##settings_panel##"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "##notifications##"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    :goto_2
    const-string v8, "##home##"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x3

    invoke-static {v8, p2}, Lcom/android/internal/util/pa/PieAction;->triggerVirtualKeypress(IZ)V

    return-void

    .restart local v5    # "isKeyguardSecure":Z
    :catch_1
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v8, "Action"

    const-string v9, "Error getting window manager service"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v5    # "isKeyguardSecure":Z
    :cond_5
    const-string v8, "##theme_switch##"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    :try_start_2
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .local v3, "ex":Landroid/os/RemoteException;
    goto :goto_2

    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_6
    const-string v8, "##back##"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x4

    invoke-static {v8, p2}, Lcom/android/internal/util/pa/PieAction;->triggerVirtualKeypress(IZ)V

    return-void

    :cond_7
    const-string v8, "##menu##"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "**menu_big**"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_8
    const/16 v8, 0x52

    invoke-static {v8, p2}, Lcom/android/internal/util/pa/PieAction;->triggerVirtualKeypress(IZ)V

    return-void

    :cond_9
    const-string v8, "##killtask##"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v6, :cond_a

    return-void

    :cond_a
    :try_start_3
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->toggleKillApp()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    return-void

    :catch_3
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_3

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_b
    const-string v8, "##notifications##"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    if-eqz v6, :cond_c

    if-eqz v5, :cond_c

    return-void

    :cond_c
    :try_start_4
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    return-void

    :catch_4
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_4

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_d
    const-string v8, "##settings_panel##"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    if-eqz v6, :cond_e

    if-eqz v5, :cond_e

    return-void

    :cond_e
    :try_start_5
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    return-void

    :catch_5
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_5

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_f
    const-string v8, "##lastapp##"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    if-eqz v6, :cond_10

    return-void

    :cond_10
    :try_start_6
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->toggleLastApp()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    return-void

    :catch_6
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_6

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_11
    const-string v8, "##recent##"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    if-eqz v6, :cond_12

    return-void

    :cond_12
    :try_start_7
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    return-void

    :catch_7
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_7

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    const-string v8, "##screenshot##"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    :try_start_8
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->toggleScreenshot()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    :goto_8
    return-void

    :catch_8
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_8

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v4, 0x0

    .local v4, "intent":Landroid/content/Intent;
    const/4 v8, 0x0

    :try_start_9
    invoke-static {p1, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v4

    .local v4, "intent":Landroid/content/Intent;
    invoke-static {p0, v4, v0, v6}, Lcom/android/internal/util/pa/PieAction;->startActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/statusbar/IStatusBarService;Z)V

    return-void

    .local v4, "intent":Landroid/content/Intent;
    :catch_9
    move-exception v2

    .local v2, "e":Ljava/net/URISyntaxException;
    const-string v8, "PieAction:"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URISyntaxException: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static startActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/statusbar/IStatusBarService;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "barService"    # Lcom/android/internal/statusbar/IStatusBarService;
    .param p3, "isKeyguardShowing"    # Z

    .prologue
    if-nez p1, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public static triggerVirtualKeypress(IZ)V
    .locals 28
    .param p0, "keyCode"    # I
    .param p1, "longpress"    # Z

    .prologue
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .local v2, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "now":J
    const/4 v14, 0x0

    .local v14, "downflags":I
    const/16 v26, 0x0

    .local v26, "upflags":I
    const/16 v6, 0x15

    move/from16 v0, p0

    if-eq v0, v6, :cond_0

    const/16 v6, 0x16

    move/from16 v0, p0

    if-ne v0, v6, :cond_2

    :cond_0
    const/16 v26, 0x6

    const/4 v14, 0x6

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit16 v14, v14, 0x80

    :cond_1
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v15, 0x101

    move-wide v6, v4

    move/from16 v9, p0

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .local v3, "downEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    new-instance v15, Landroid/view/KeyEvent;

    const/16 v20, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v27, 0x101

    move-wide/from16 v16, v4

    move-wide/from16 v18, v4

    move/from16 v21, p0

    invoke-direct/range {v15 .. v27}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .local v15, "upEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    invoke-virtual {v2, v15, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void

    .end local v3    # "downEvent":Landroid/view/KeyEvent;
    .end local v15    # "upEvent":Landroid/view/KeyEvent;
    :cond_2
    const/16 v6, 0x13

    move/from16 v0, p0

    if-eq v0, v6, :cond_0

    const/16 v6, 0x14

    move/from16 v0, p0

    if-eq v0, v6, :cond_0

    const/16 v26, 0x48

    const/16 v14, 0x48

    goto :goto_0
.end method
