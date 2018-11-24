.class public Lcom/dexcom/cgm/share/RealtimeEvents/objects/EncryptionKey;
.super Ljava/lang/Object;
.source "EncryptionKey.java"


# instance fields
.field private final IV:Ljava/lang/String;

.field private final Key:Ljava/lang/String;

.field private final KeyId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/EncryptionKey;->KeyId:I

    .line 21
    iput-object p2, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/EncryptionKey;->Key:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/EncryptionKey;->IV:Ljava/lang/String;

    .line 23
    return-void
.end method
