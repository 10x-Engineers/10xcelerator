class c_1816_1;
    integer i = -301;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1816_1;
    c_1816_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x0x0xx100xz0z010z0xxx1z0z1x0zxxzxxxzzzzxzxxxzzxzxzzxxzzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
