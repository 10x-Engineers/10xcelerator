class c_951_1;
    integer i = -157;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_951_1;
    c_951_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zz0010110001xzx1x1x0xz1xx0x0zxxxxxzzxxxxxzxzzxxxzxzzzxzxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
