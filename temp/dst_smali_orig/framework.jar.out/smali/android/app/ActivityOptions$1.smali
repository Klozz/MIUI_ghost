.class Landroid/app/ActivityOptions$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "ActivityOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityOptions;

.field final synthetic val$finalListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

.field final synthetic val$h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityOptions;
    .param p2, "val$h"    # Landroid/os/Handler;
    .param p3, "val$finalListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    iput-object p1, p0, Landroid/app/ActivityOptions$1;->this$0:Landroid/app/ActivityOptions;

    iput-object p2, p0, Landroid/app/ActivityOptions$1;->val$h:Landroid/os/Handler;

    iput-object p3, p0, Landroid/app/ActivityOptions$1;->val$finalListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/app/ActivityOptions$1;->val$h:Landroid/os/Handler;

    new-instance v1, Landroid/app/ActivityOptions$1$1;

    iget-object v2, p0, Landroid/app/ActivityOptions$1;->val$finalListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-direct {v1, p0, v2}, Landroid/app/ActivityOptions$1$1;-><init>(Landroid/app/ActivityOptions$1;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
