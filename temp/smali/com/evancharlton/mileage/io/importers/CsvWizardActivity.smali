.class public abstract Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;
.super Landroid/app/Activity;
.source "CsvWizardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final FINISH:I = 0x1

.field protected static final PREVIOUS:I = 0x2

.field protected static final REQUEST_NEXT:I


# instance fields
.field protected mContainer:Landroid/widget/LinearLayout;

.field private mHeaderText:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field private mPrevButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract buildIntent(Landroid/content/Intent;)Z
.end method

.method protected final getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method protected final getPreviousButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->mPrevButton:Landroid/widget/Button;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 72
    packed-switch p1, :pswitch_data_0

    .line 80
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 81
    return-void

    .line 74
    :pswitch_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 75
    invoke-virtual {p0, p2}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->setResult(I)V

    .line 76
    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->finish()V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 57
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->buildIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->finish()V

    goto :goto_0

    .line 61
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 65
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->finish()V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x7f09001e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->setContentView(I)V

    .line 30
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->mContainer:Landroid/widget/LinearLayout;

    .line 32
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->mNextButton:Landroid/widget/Button;

    .line 33
    iget-object v0, p0, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->mPrevButton:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->mPrevButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method protected final setHeaderText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->mHeaderText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 48
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->mHeaderText:Landroid/widget/TextView;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 51
    return-void
.end method
