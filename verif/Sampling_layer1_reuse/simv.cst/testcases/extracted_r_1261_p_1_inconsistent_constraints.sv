class c_1261_1;
    integer i = -209;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1261_1;
    c_1261_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x100000zxz0z1zz1zxzxzx1zzxxzz0z0zxxxxxzzxxxxxxzxxxzxzzxzxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
