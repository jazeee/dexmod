.class Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;
.super Ljava/lang/Object;
.source "SHealthAdapter.java"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/z;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$000(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$100(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$300(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;

    move-result-object v0

    .line 141
    invoke-static {}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$200()Ljava/util/Set;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->isPermissionAcquired(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 142
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$400(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;->onPermissionsNotAcquired()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$700(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$000(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v0, v4}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$702(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;Z)Z

    .line 171
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v0, v4}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$002(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;Z)Z

    .line 172
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->dataStore:Lcom/samsung/android/sdk/healthdata/w;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/w;->disconnectService()V

    .line 175
    :cond_2
    return-void

    .line 148
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$400(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;->onPermissionsAcquired()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$700(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$000(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 170
    :cond_4
    iget-object v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v1, v4}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$702(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;Z)Z

    .line 171
    iget-object v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v1, v4}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$002(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;Z)Z

    .line 172
    iget-object v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->dataStore:Lcom/samsung/android/sdk/healthdata/w;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/healthdata/w;->disconnectService()V

    :cond_5
    throw v0

    .line 156
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$300(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;

    move-result-object v0

    invoke-static {}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$200()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$600(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->requestPermissions(Ljava/util/Set;Landroid/app/Activity;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    .line 157
    invoke-static {v1}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$500(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Lcom/samsung/android/sdk/healthdata/aj;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder;->setResultListener(Lcom/samsung/android/sdk/healthdata/aj;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 161
    :try_start_3
    const-string v1, "S Health"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "S Health Permission Request error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public onConnectionFailed(Lcom/samsung/android/sdk/healthdata/a;)V
    .locals 4

    .prologue
    .line 181
    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/a;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 222
    const-string v0, "UNDOCUMENTED_ERROR_CODE"

    .line 225
    :goto_0
    const-string v1, "S Health"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connect to S Health failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$700(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$400(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;->onConnectionFailed(Lcom/samsung/android/sdk/healthdata/a;)V

    .line 235
    :goto_1
    return-void

    .line 183
    :pswitch_0
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 186
    :pswitch_1
    const-string v0, "CONNECTION FAILURE"

    goto :goto_0

    .line 189
    :pswitch_2
    const-string v0, "PLATFORM_NOT_INSTALLED"

    goto :goto_0

    .line 192
    :pswitch_3
    const-string v0, "OLD_VERSION_SDK"

    goto :goto_0

    .line 195
    :pswitch_4
    const-string v0, "OLD_VERSION_PLATFORM"

    goto :goto_0

    .line 198
    :pswitch_5
    const-string v0, "TIMEOUT"

    goto :goto_0

    .line 201
    :pswitch_6
    const-string v0, "PLATFORM_DISABLED"

    goto :goto_0

    .line 204
    :pswitch_7
    const-string v0, "USER_PASSWORD_NEEDED"

    goto :goto_0

    .line 207
    :pswitch_8
    const-string v0, "PLATFORM_SIGNATURE_FAILURE"

    goto :goto_0

    .line 210
    :pswitch_9
    const-string v0, "USER_AGREEMENT_NEEDED"

    goto :goto_0

    .line 213
    :pswitch_a
    const-string v0, "SUCCESS"

    goto :goto_0

    .line 216
    :pswitch_b
    const-string v0, "PLATFOR_INITIALIZING"

    goto :goto_0

    .line 219
    :pswitch_c
    const-string v0, "USER_PASSWORD_POPUP"

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$800(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;->onConnectionFailed(Lcom/samsung/android/sdk/healthdata/a;)V

    goto :goto_1

    .line 181
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onDisconnected()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method
