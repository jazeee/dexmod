.class Lcom/dexcom/platform_database/database/DatabaseRecordTransformer$ColumnDescriptor;
.super Ljava/lang/Object;
.source "DatabaseRecordTransformer.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    iput-object p1, p0, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer$ColumnDescriptor;->name:Ljava/lang/String;

    .line 699
    iput p2, p0, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer$ColumnDescriptor;->version:I

    .line 700
    return-void
.end method
