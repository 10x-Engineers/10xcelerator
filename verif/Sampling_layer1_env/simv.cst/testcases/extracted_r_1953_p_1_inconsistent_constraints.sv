class c_1953_1;
    integer i = -324;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1953_1;
    c_1953_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx10xz1x0x10z00x0zz1x0zzzx1zz010xxzxxxxxxzxxxzxxzzzxxxxxxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
