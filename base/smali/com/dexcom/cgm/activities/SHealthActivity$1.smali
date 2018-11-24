.class Lcom/dexcom/cgm/activities/SHealthActivity$1;
.super Ljava/lang/Object;
.source "SHealthActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/SHealthActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/SHealthActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/dexcom/cgm/activities/SHealthActivity$1;->this$0:Lcom/dexcom/cgm/activities/SHealthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/samsung/android/sdk/healthdata/a;)V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/a;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity$1;->this$0:Lcom/dexcom/cgm/activities/SHealthActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/SHealthActivity;->access$100(Lcom/dexcom/cgm/activities/SHealthActivity;)V

    .line 75
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity$1;->this$0:Lcom/dexcom/cgm/activities/SHealthActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/SHealthActivity;->access$000(Lcom/dexcom/cgm/activities/SHealthActivity;)V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPermissionsAcquired()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity$1;->this$0:Lcom/dexcom/cgm/activities/SHealthActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/SHealthActivity;->access$200(Lcom/dexcom/cgm/activities/SHealthActivity;)V

    .line 81
    return-void
.end method

.method public onPermissionsNotAcquired()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity$1;->this$0:Lcom/dexcom/cgm/activities/SHealthActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/SHealthActivity;->access$100(Lcom/dexcom/cgm/activities/SHealthActivity;)V

    .line 87
    return-void
.end method
