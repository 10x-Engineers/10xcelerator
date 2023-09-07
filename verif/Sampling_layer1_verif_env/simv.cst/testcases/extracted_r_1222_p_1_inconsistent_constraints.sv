class c_1222_1;
    integer i = -202;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1222_1;
    c_1222_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z00xzz000xx11x1xx1z10xz00xx1xxxxzzzxxzxxzxxzxxzzxxzxzxxxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
