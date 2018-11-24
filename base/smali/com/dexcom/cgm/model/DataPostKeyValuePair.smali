.class public Lcom/dexcom/cgm/model/DataPostKeyValuePair;
.super Ljava/lang/Object;
.source "DataPostKeyValuePair.java"


# annotations
.annotation runtime Lcom/dexcom/cgm/model/DatabaseTable;
.end annotation


# instance fields
.field private m_postJSON:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "post_json"
    .end annotation
.end field

.field private m_sequenceNumber:Ljava/lang/Long;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "sequence_number"
    .end annotation

    .annotation runtime Lcom/dexcom/cgm/model/DatabasePrimaryKey;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/DataPostKeyValuePair;->m_sequenceNumber:Ljava/lang/Long;

    .line 29
    iput-object p3, p0, Lcom/dexcom/cgm/model/DataPostKeyValuePair;->m_postJSON:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getPostJSON()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dexcom/cgm/model/DataPostKeyValuePair;->m_postJSON:Ljava/lang/String;

    return-object v0
.end method
