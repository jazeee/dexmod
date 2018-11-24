.class public Lcom/dexcom/cgm/share/webservice/jsonobjects/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"


# instance fields
.field public ContactId:Ljava/util/UUID;

.field public DateTimeCreated:Lcom/dexcom/cgm/share/webservice/jsonobjects/DateTimeType;

.field public DateTimeModified:Lcom/dexcom/cgm/share/webservice/jsonobjects/DateTimeType;

.field public Email:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public PublisherAccountId:Ljava/util/UUID;

.field public State:I

.field public SubscriptionId:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
