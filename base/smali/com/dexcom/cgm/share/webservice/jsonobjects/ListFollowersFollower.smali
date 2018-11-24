.class public Lcom/dexcom/cgm/share/webservice/jsonobjects/ListFollowersFollower;
.super Ljava/lang/Object;
.source "ListFollowersFollower.java"


# instance fields
.field public ContactId:Ljava/util/UUID;

.field public ContactName:Ljava/lang/String;

.field public DateTimeCreated:Lcom/dexcom/cgm/share/webservice/jsonobjects/DateTimeType;

.field public DateTimeModified:Lcom/dexcom/cgm/share/webservice/jsonobjects/DateTimeType;

.field public DisplayName:Ljava/lang/String;

.field public InviteExpires:Lcom/dexcom/cgm/share/webservice/jsonobjects/DateTimeType;

.field public IsEnabled:Z

.field public IsMonitoringSessionActive:Z

.field public Permissions:I

.field public State:I

.field public SubscriberId:Ljava/util/UUID;

.field public SubscriptionId:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
