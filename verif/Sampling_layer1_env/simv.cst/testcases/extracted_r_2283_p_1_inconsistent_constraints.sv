class c_2283_1;
    integer i = -379;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2283_1;
    c_2283_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111xx0zz1zz0xz0x00x0xx101xz0z1x1zzzxzxzxzxzxzxxxxxxxzzxxxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
