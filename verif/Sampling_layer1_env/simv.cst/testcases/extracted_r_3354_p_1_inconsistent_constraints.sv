class c_3354_1;
    integer i = -557;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3354_1;
    c_3354_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx0x010z1z1zz0001zxz000zzzz0xx0zzxzxxzxxzxzxzxxzzxxzxzxzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
