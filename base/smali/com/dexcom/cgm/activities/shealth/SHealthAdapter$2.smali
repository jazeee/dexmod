.class Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$2;
.super Ljava/lang/Object;
.source "SHealthAdapter.java"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/aj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sdk/healthdata/aj",
        "<",
        "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$2;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;)V
    .locals 2

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;->getResultMap()Ljava/util/Map;

    move-result-object v0

    .line 252
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$2;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$800(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;->onPermissionsNotAcquired()V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$2;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->access$800(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;->onPermissionsAcquired()V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V
    .locals 0

    .prologue
    .line 245
    check-cast p1, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$2;->onResult(Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;)V

    return-void
.end method
