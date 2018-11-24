.class public Lcom/dexcom/cgm/model/GetMessageResult;
.super Ljava/lang/Object;
.source "GetMessageResult.java"


# instance fields
.field private AppUpgradeURL:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "app_upgrade_url"
    .end annotation

    .annotation runtime Lcom/dexcom/cgm/model/DatabasePrimaryKey;
    .end annotation
.end field

.field private Culture:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "culture"
    .end annotation
.end field

.field private MaxMessageDisplays:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "max_message_displays"
    .end annotation
.end field

.field private Message:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "message"
    .end annotation
.end field

.field private MessageDisplayFrequency:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "message_display_frequency"
    .end annotation
.end field

.field private MoreInfoURL:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "more_info_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppUpgradeURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dexcom/cgm/model/GetMessageResult;->AppUpgradeURL:Ljava/lang/String;

    return-object v0
.end method

.method public getCulture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dexcom/cgm/model/GetMessageResult;->Culture:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxMessageDisplays()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/dexcom/cgm/model/GetMessageResult;->MaxMessageDisplays:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dexcom/cgm/model/GetMessageResult;->Message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageDisplayFrequency()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/dexcom/cgm/model/GetMessageResult;->MessageDisplayFrequency:I

    return v0
.end method

.method public getMoreInfoURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dexcom/cgm/model/GetMessageResult;->MoreInfoURL:Ljava/lang/String;

    return-object v0
.end method

.method public setAppUpgradeURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dexcom/cgm/model/GetMessageResult;->AppUpgradeURL:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setCulture(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dexcom/cgm/model/GetMessageResult;->Culture:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setMaxMessageDisplays(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/dexcom/cgm/model/GetMessageResult;->MaxMessageDisplays:I

    .line 59
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/dexcom/cgm/model/GetMessageResult;->Message:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setMessageDisplayFrequency(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/dexcom/cgm/model/GetMessageResult;->MessageDisplayFrequency:I

    .line 79
    return-void
.end method

.method public setMoreInfoURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/dexcom/cgm/model/GetMessageResult;->MoreInfoURL:Ljava/lang/String;

    .line 89
    return-void
.end method
