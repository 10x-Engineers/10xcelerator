class c_314_1;
    integer i = -51;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_314_1;
    c_314_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz001z11zz11zz010xx1z1z0x1zxz0zzzxzzzxxxxzzzzxzzxxzxzxzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
