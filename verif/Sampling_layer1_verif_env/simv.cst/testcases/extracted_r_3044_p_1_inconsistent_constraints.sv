class c_3044_1;
    integer i = -506;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3044_1;
    c_3044_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x0z1zz0zzx0z0zxxx000zzzzx1110xxzzxzxzzzxxzzxxzxxzxxzxzzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
