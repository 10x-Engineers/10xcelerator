class c_1768_1;
    integer i = -293;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1768_1;
    c_1768_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1101z0z0zx0x1101100xz1xxzxxz0zxxxzzxzxxxzxzxzzzxxxxxzzxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
