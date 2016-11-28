.class public Lcom/android/internal/util/pa/ActionConfig;
.super Ljava/lang/Object;
.source "ActionConfig.java"


# instance fields
.field private mClickAction:Ljava/lang/String;

.field private mClickActionDescription:Ljava/lang/String;

.field private mIconUri:Ljava/lang/String;

.field private mLongpressAction:Ljava/lang/String;

.field private mLongpressActionDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "clickAction"    # Ljava/lang/String;
    .param p2, "clickActionDescription"    # Ljava/lang/String;
    .param p3, "longpressAction"    # Ljava/lang/String;
    .param p4, "longpressActionDescription"    # Ljava/lang/String;
    .param p5, "iconUri"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/pa/ActionConfig;->mClickAction:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/util/pa/ActionConfig;->mClickActionDescription:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/util/pa/ActionConfig;->mLongpressAction:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/util/pa/ActionConfig;->mLongpressActionDescription:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/util/pa/ActionConfig;->mIconUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClickAction()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/pa/ActionConfig;->mClickAction:Ljava/lang/String;

    return-object v0
.end method

.method public getClickActionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/pa/ActionConfig;->mClickActionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/pa/ActionConfig;->mIconUri:Ljava/lang/String;

    return-object v0
.end method

.method public getLongpressAction()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/pa/ActionConfig;->mLongpressAction:Ljava/lang/String;

    return-object v0
.end method

.method public getLongpressActionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/pa/ActionConfig;->mLongpressActionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public setClickAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/util/pa/ActionConfig;->mClickAction:Ljava/lang/String;

    return-void
.end method

.method public setClickActionDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/util/pa/ActionConfig;->mClickActionDescription:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconUri"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/util/pa/ActionConfig;->mIconUri:Ljava/lang/String;

    return-void
.end method

.method public setLongpressAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/util/pa/ActionConfig;->mLongpressAction:Ljava/lang/String;

    return-void
.end method

.method public setLongpressActionDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/util/pa/ActionConfig;->mLongpressActionDescription:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/pa/ActionConfig;->mClickActionDescription:Ljava/lang/String;

    return-object v0
.end method
