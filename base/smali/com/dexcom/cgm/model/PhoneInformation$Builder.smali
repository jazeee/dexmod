.class public Lcom/dexcom/cgm/model/PhoneInformation$Builder;
.super Ljava/lang/Object;
.source "PhoneInformation.java"


# static fields
.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private m_appPackageName:Ljava/lang/String;

.field private m_appVersion:Ljava/lang/String;

.field private m_buildBoard:Ljava/lang/String;

.field private m_buildBootloader:Ljava/lang/String;

.field private m_buildBrand:Ljava/lang/String;

.field private m_buildDevice:Ljava/lang/String;

.field private m_buildHardware:Ljava/lang/String;

.field private m_buildManufacturer:Ljava/lang/String;

.field private m_buildModel:Ljava/lang/String;

.field private m_buildProduct:Ljava/lang/String;

.field private m_buildRadioVersion:Ljava/lang/String;

.field private m_osVersionIncremental:Ljava/lang/String;

.field private m_osVersionRelease:Ljava/lang/String;

.field private m_osVersionSdkInt:Ljava/lang/Integer;

.field private m_pid:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/dexcom/cgm/model/PhoneInformation;
    .locals 18

    .prologue
    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_appPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_appVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_osVersionRelease:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_osVersionIncremental:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_osVersionSdkInt:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildProduct:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildDevice:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildBoard:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildManufacturer:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildBrand:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildModel:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildBootloader:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildHardware:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildRadioVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_pid:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 203
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PhoneInformation builder did not have all fields set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_1
    new-instance v1, Lcom/dexcom/cgm/model/PhoneInformation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_appPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_appVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_osVersionRelease:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_osVersionIncremental:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_osVersionSdkInt:Ljava/lang/Integer;

    .line 211
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildProduct:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildDevice:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildBoard:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildManufacturer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildBrand:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildModel:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildBootloader:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildHardware:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildRadioVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_pid:Ljava/lang/Integer;

    move-object/from16 v16, v0

    .line 221
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/dexcom/cgm/model/PhoneInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dexcom/cgm/model/PhoneInformation$1;)V

    return-object v1
.end method

.method public setAppPackageName(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;
    .locals 0

    .prologue
    .line 97
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_appPackageName:Ljava/lang/String;

    .line 98
    return-object p0

    .line 97
    :cond_0
    const-string p1, "unknown"

    goto :goto_0
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;
    .locals 0

    .prologue
    .line 103
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_appVersion:Ljava/lang/String;

    .line 104
    return-object p0

    .line 103
    :cond_0
    const-string p1, "unknown"

    goto :goto_0
.end method

.method public setBuildBoard(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;
    .locals 0

    .prologue
    .line 139
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildBoard:Ljava/lang/String;

    .line 140
    return-object p0

    .line 139
    :cond_0
    const-string p1, "unknown"

    goto :goto_0
.end method

.method public setBuildBootloader(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;
    .locals 0

    .prologue
    .line 163
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildBootloader:Ljava/lang/String;

    .line 164
    return-object p0

    .line 163
    :cond_0
    const-string p1, "unknown"

    goto :goto_0
.end method

.method public setBuildBrand(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;
    .locals 0

    .prologue
    .line 151
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildBrand:Ljava/lang/String;

    .line 152
    return-object p0

    .line 151
    :cond_0
    const-string p1, "unknown"

    goto :goto_0
.end method

.method public setBuildDevice(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;
    .locals 0

    .prologue
    .line 133
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildDevice:Ljava/lang/String;

    .line 134
    return-object p0

    .line 133
    :cond_0
    const-string p1, "unknown"

    goto :goto_0
.end method

.method public setBuildHardware(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;
    .locals 0

    .prologue
    .line 169
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildHardware:Ljava/lang/String;

    .line 170
    return-object p0

    .line 169
    :cond_0
    const-string p1, "unknown"

    goto :goto_0
.end method

.method public setBuildManufacturer(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;
    .locals 0

    .prologue
    .line 145
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildManufacturer:Ljava/lang/String;

    .line 146
    return-object p0

    .line 145
    :cond_0
    const-string p1, "unknown"

    goto :goto_0
.end method

.method public setBuildModel(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;
    .locals 0

    .prologue
    .line 157
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildModel:Ljava/lang/String;

    .line 158
    return-object p0

    .line 157
    :cond_0
    const-string p1, "unknown"

    goto :goto_0
.end method

.method public setBuildProduct(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;
    .locals 0

    .prologue
    .line 127
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildProduct:Ljava/lang/String;

    .line 128
    return-object p0

    .line 127
    :cond_0
    const-string p1, "unknown"

    goto :goto_0
.end method

.method public setBuildRadioVersion(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;
    .locals 0

    .prologue
    .line 175
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_buildRadioVersion:Ljava/lang/String;

    .line 176
    return-object p0

    .line 175
    :cond_0
    const-string p1, "unknown"

    goto :goto_0
.end method

.method public setOsVersionIncremental(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;
    .locals 0

    .prologue
    .line 115
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_osVersionIncremental:Ljava/lang/String;

    .line 116
    return-object p0

    .line 115
    :cond_0
    const-string p1, "unknown"

    goto :goto_0
.end method

.method public setOsVersionRelease(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;
    .locals 0

    .prologue
    .line 109
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_osVersionRelease:Ljava/lang/String;

    .line 110
    return-object p0

    .line 109
    :cond_0
    const-string p1, "unknown"

    goto :goto_0
.end method

.method public setOsVersionSdkInt(I)Lcom/dexcom/cgm/model/PhoneInformation$Builder;
    .locals 1

    .prologue
    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_osVersionSdkInt:Ljava/lang/Integer;

    .line 122
    return-object p0
.end method

.method public setPid(I)Lcom/dexcom/cgm/model/PhoneInformation$Builder;
    .locals 1

    .prologue
    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->m_pid:Ljava/lang/Integer;

    .line 182
    return-object p0
.end method
