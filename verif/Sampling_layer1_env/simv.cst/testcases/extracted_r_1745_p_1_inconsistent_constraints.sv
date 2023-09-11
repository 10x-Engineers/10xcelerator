class c_1745_1;
    integer i = -289;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1745_1;
    c_1745_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x1xzx1001x0zzxz1zz110x1011010xxzxxzzzzzxxzxxzzxxxxxxxxxxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
