.class public Lcom/android/internal/util/omni/OmniSwitchConstants;
.super Ljava/lang/Object;
.source "OmniSwitchConstants.java"


# static fields
.field public static final ACTION_HIDE_OVERLAY:Ljava/lang/String; = "org.omnirom.omniswitch.ACTION_HIDE_OVERLAY"

.field public static final ACTION_SHOW_OVERLAY:Ljava/lang/String; = "org.omnirom.omniswitch.ACTION_SHOW_OVERLAY"

.field public static final ACTION_TOGGLE_OVERLAY:Ljava/lang/String; = "org.omnirom.omniswitch.ACTION_TOGGLE_OVERLAY"

.field public static final APP_PACKAGE_NAME:Ljava/lang/String; = "org.omnirom.omniswitch"

.field public static INTENT_LAUNCH_APP:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    const-string/jumbo v1, "org.omnirom.omniswitch"

    const-string/jumbo v2, "org.omnirom.omniswitch.SettingsActivity"

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/omni/OmniSwitchConstants;->INTENT_LAUNCH_APP:Landroid/content/Intent;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
