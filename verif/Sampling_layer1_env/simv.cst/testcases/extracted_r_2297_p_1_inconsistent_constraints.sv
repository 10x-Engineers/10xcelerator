class c_2297_1;
    integer i = -381;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2297_1;
    c_2297_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1z0x0x1x0zx001z1x1xx0z10x0zx1zxxzxzxzxxxzxxxzzxxxzzzzxxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
