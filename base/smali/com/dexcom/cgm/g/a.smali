.class public Lcom/dexcom/cgm/g/a;
.super Ljava/lang/Object;
.source "BluetoothLog.java"


# instance fields
.field private final m_dal:Lcom/dexcom/cgm/d/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/d/a;)V
    .locals 0

    .prologue
    .line 2018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2019
    iput-object p1, p0, Lcom/dexcom/cgm/g/a;->m_dal:Lcom/dexcom/cgm/d/a;

    .line 2020
    return-void
.end method

.method public static getNullArgumentMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2031
    const-string v0, "Argument is null"

    return-object v0
.end method

.method public static getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2027
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A remote-invocation error occurs on the connection: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public log(Lcom/dexcom/cgm/model/BluetoothEventRecord;)V
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/dexcom/cgm/g/a;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/d/a;->writeBluetoothEventRecord(Lcom/dexcom/cgm/model/BluetoothEventRecord;)V

    .line 1026
    return-void
.end method
