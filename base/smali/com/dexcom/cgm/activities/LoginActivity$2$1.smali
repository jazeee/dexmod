.class Lcom/dexcom/cgm/activities/LoginActivity$2$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/LoginActivity$2;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/LoginActivity$2;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/dexcom/cgm/activities/LoginActivity$2$1;->this$0:Lcom/dexcom/cgm/activities/LoginActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LoginActivity$2$1;->this$0:Lcom/dexcom/cgm/activities/LoginActivity$2;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$onSuccessfulLogin:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 180
    return-void
.end method
