.class public Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;
.super Ljava/lang/Object;
.source "RuntimeInfo.java"


# instance fields
.field private AppName:Ljava/lang/String;

.field private AppNumber:Ljava/lang/String;

.field private AppVersion:Ljava/lang/String;

.field private DeviceManufacturer:Ljava/lang/String;

.field private DeviceModel:Ljava/lang/String;

.field private DeviceOsName:Ljava/lang/String;

.field private DeviceOsVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;->AppName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;->AppNumber:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;->AppVersion:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;->DeviceManufacturer:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;->DeviceModel:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;->DeviceOsName:Ljava/lang/String;

    .line 35
    iput-object p7, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;->DeviceOsVersion:Ljava/lang/String;

    .line 36
    return-void
.end method
