.class Lcom/google/common/hash/Hashing$Adler32Holder;
.super Ljava/lang/Object;
.source "Hashing.java"


# static fields
.field static final ADLER_32:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 274
    sget-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->ADLER_32:Lcom/google/common/hash/Hashing$ChecksumType;

    const-string v1, "Hashing.adler32()"

    invoke-static {v0, v1}, Lcom/google/common/hash/Hashing;->access$100(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Hashing$Adler32Holder;->ADLER_32:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
