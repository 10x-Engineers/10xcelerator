class c_3346_1;
    integer i = -556;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3346_1;
    c_3346_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1xx1xx1zzx11z11xxzxxzz1zz10xzxxxxxxxxzxxzxzxxxxxzxzxxzzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
