.class Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;
.super Ljava/lang/Object;
.source "FillupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/adapters/FillupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# instance fields
.field public final dateView:Lcom/evancharlton/mileage/views/FormattedDateView;

.field public final economy:Lcom/evancharlton/mileage/views/FormattedNumberView;

.field public final metaField:Landroid/widget/TextView;

.field public final price:Lcom/evancharlton/mileage/views/FormattedCurrencyView;

.field public final volume:Lcom/evancharlton/mileage/views/FormattedNumberView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/FormattedDateView;

    iput-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;->dateView:Lcom/evancharlton/mileage/views/FormattedDateView;

    .line 169
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;->metaField:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f090018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/FormattedNumberView;

    iput-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;->volume:Lcom/evancharlton/mileage/views/FormattedNumberView;

    .line 171
    const v0, 0x7f090017

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/FormattedCurrencyView;

    iput-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;->price:Lcom/evancharlton/mileage/views/FormattedCurrencyView;

    .line 172
    const v0, 0x7f090023

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/FormattedNumberView;

    iput-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;->economy:Lcom/evancharlton/mileage/views/FormattedNumberView;

    .line 174
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 175
    return-void
.end method
