.class Lcom/dexcom/cgm/activities/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/LoginActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/LoginActivity;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/dexcom/cgm/activities/LoginActivity$1;->this$0:Lcom/dexcom/cgm/activities/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LoginActivity$1;->this$0:Lcom/dexcom/cgm/activities/LoginActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/LoginActivity;->access$000(Lcom/dexcom/cgm/activities/LoginActivity;)V

    .line 128
    return-void
.end method
