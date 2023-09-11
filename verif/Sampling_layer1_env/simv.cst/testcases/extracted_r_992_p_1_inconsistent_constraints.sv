class c_992_1;
    integer i = -164;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_992_1;
    c_992_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0011x0zzxz0xzx000x1xxxxzz0xz0x1xxxzzxxxzxxxzzxzxzxxzxxxxxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram