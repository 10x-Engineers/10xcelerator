class c_2746_1;
    integer i = -456;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2746_1;
    c_2746_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xx0x010xz0z1xx1xz001z0x01z1x10zzzzxxxzxxxxzzzxzzxxzxxxzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
