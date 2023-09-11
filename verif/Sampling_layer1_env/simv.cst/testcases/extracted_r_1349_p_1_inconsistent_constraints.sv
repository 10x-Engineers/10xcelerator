class c_1349_1;
    integer i = -223;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1349_1;
    c_1349_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z00xx1z1x1z0zxx11x0zz1z010000zzzzzzxxxzxxxxzxzzxzxzxzzzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
