.class Lcom/evancharlton/mileage/adapters/CsvFieldAdapter$Holder;
.super Ljava/lang/Object;
.source "CsvFieldAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/adapters/CsvFieldAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# instance fields
.field public final text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "text"    # Landroid/widget/TextView;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/evancharlton/mileage/adapters/CsvFieldAdapter$Holder;->text:Landroid/widget/TextView;

    .line 117
    return-void
.end method
