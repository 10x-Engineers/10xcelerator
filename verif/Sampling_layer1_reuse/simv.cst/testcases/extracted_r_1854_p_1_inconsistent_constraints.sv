class c_1854_1;
    integer i = -307;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1854_1;
    c_1854_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101x1100z0xz0zzzxz11xz0x011x0x0xxzzxxzzzxxxxzxzxxzzzxxzzzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
