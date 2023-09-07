class c_3181_1;
    integer i = -529;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3181_1;
    c_3181_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1z1zx0xz1zxxx111xzzxxx00xxz000xxzxxxzxxzzxxxzxzxxxzxxxxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
