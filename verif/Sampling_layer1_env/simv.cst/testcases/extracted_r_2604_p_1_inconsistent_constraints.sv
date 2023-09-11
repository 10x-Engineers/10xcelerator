class c_2604_1;
    integer i = -432;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2604_1;
    c_2604_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz01zxx11z1zz00zzz1x101xz0z10zxzzxzzzzxzzxxxzxzxxzxxzxxzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
