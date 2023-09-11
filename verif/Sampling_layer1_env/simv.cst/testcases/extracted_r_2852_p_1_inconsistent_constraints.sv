class c_2852_1;
    integer i = -474;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2852_1;
    c_2852_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10z10z10zz0xz00zx0zxx11z1x00z0zxxxxxxxzzzxzzzzxxzzzxzxxxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
