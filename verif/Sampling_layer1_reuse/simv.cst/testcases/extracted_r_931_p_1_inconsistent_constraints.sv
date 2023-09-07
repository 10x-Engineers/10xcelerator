class c_931_1;
    integer i = -154;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_931_1;
    c_931_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xzx0xz010zxxz0z110x10x0zxz011zzxzzzzxzxxzxzxzxxxzxzzxzzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
