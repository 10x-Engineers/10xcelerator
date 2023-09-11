class c_1127_1;
    integer i = -186;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1127_1;
    c_1127_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x1x0001zxxxz0zzzzzxxzxx11z1z10xzxzxzzzxzxzxzzzxzxzxzzzzzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
