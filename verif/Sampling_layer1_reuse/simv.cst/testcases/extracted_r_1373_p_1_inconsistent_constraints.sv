class c_1373_1;
    integer i = -227;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1373_1;
    c_1373_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx0zx01101x1xx10111zzxz001x11zxzxzzzxzzzxxzxzzxxxzzzzzzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
