.class public Lcom/dexcom/cgm/model/ValidityResult;
.super Ljava/lang/Object;
.source "ValidityResult.java"


# instance fields
.field private MessageId:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "message_id"
    .end annotation
.end field

.field private Validity:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "validity"
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
.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dexcom/cgm/model/ValidityResult;->MessageId:Ljava/lang/String;

    return-object v0
.end method

.method public getValidity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dexcom/cgm/model/ValidityResult;->Validity:Ljava/lang/String;

    return-object v0
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dexcom/cgm/model/ValidityResult;->MessageId:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setValidity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/dexcom/cgm/model/ValidityResult;->Validity:Ljava/lang/String;

    .line 35
    return-void
.end method
