class c_2419_1;
    integer i = -402;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2419_1;
    c_2419_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zx000x100z00z0x1zx1z1zxx00z0zxxzzzzxxxxzzzzzzzzzzxzzzxxxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
