.class Lcom/google/common/hash/Hashing$SipHash24Holder;
.super Ljava/lang/Object;
.source "Hashing.java"


# static fields
.field static final SIP_HASH_24:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 162
    new-instance v1, Lcom/google/common/hash/SipHashFunction;

    const/4 v2, 0x2

    const/4 v3, 0x4

    const-wide v4, 0x706050403020100L

    const-wide v6, 0xf0e0d0c0b0a0908L

    invoke-direct/range {v1 .. v7}, Lcom/google/common/hash/SipHashFunction;-><init>(IIJJ)V

    sput-object v1, Lcom/google/common/hash/Hashing$SipHash24Holder;->SIP_HASH_24:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
