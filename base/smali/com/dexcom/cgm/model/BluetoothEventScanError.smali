.class public Lcom/dexcom/cgm/model/BluetoothEventScanError;
.super Ljava/lang/Object;
.source "BluetoothEventScanError.java"


# instance fields
.field private m_error:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/dexcom/cgm/model/BluetoothEventScanError;->m_error:Ljava/lang/String;

    .line 20
    return-void
.end method
