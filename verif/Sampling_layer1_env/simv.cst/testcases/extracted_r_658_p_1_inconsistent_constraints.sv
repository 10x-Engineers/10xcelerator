class c_658_1;
    integer i = -108;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_658_1;
    c_658_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0010z0zx1xxzzx10x0x0xzx0x001z0zzzxxxzzxzxxxzzxzzxzxxzxzxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
