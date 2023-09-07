class c_2262_1;
    integer i = -375;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2262_1;
    c_2262_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz11010z10x101x0zz0z1xzz1011zx0xzxxxxzzzxxzzzxxxzzxxzxxxzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
