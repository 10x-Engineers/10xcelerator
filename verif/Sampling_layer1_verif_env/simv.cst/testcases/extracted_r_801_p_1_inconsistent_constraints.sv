class c_801_1;
    integer i = -132;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_801_1;
    c_801_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx1110z0001x0xz00zzz11z0zzz0zxxzzzxxxzxxzxxzxzxxzzxxzxzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
