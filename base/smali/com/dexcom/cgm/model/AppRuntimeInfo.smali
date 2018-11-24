.class public Lcom/dexcom/cgm/model/AppRuntimeInfo;
.super Ljava/lang/Object;
.source "AppRuntimeInfo.java"


# instance fields
.field private AppName:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "app_name"
    .end annotation

    .annotation runtime Lcom/dexcom/cgm/model/DatabasePrimaryKey;
    .end annotation
.end field

.field private AppNumber:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "app_number"
    .end annotation
.end field

.field private AppVersion:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "app_version"
    .end annotation
.end field

.field private DeviceManufacturer:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "device_manufacturer"
    .end annotation
.end field

.field private DeviceModel:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "device_model"
    .end annotation
.end field

.field private DeviceOsName:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "device_os_name"
    .end annotation
.end field

.field private DeviceOsVersion:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "device_os_version"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/model/AppRuntimeInfo$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/dexcom/cgm/model/AppRuntimeInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public compareValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dexcom/cgm/model/AppRuntimeInfo;->AppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/AppRuntimeInfo;->AppNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/AppRuntimeInfo;->AppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/AppRuntimeInfo;->DeviceManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/AppRuntimeInfo;->DeviceModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/AppRuntimeInfo;->DeviceOsName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/AppRuntimeInfo;->DeviceOsVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/model/AppRuntimeInfo;->DeviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dexcom/cgm/model/AppRuntimeInfo;->DeviceOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/dexcom/cgm/model/AppRuntimeInfo;->AppName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setAppNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/dexcom/cgm/model/AppRuntimeInfo;->AppNumber:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/dexcom/cgm/model/AppRuntimeInfo;->AppVersion:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setDeviceManufacturer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/dexcom/cgm/model/AppRuntimeInfo;->DeviceManufacturer:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/dexcom/cgm/model/AppRuntimeInfo;->DeviceModel:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setDeviceOsName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/dexcom/cgm/model/AppRuntimeInfo;->DeviceOsName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setDeviceOsVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/dexcom/cgm/model/AppRuntimeInfo;->DeviceOsVersion:Ljava/lang/String;

    .line 80
    return-void
.end method
