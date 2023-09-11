class c_2625_1;
    integer i = -436;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2625_1;
    c_2625_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1001zxxxzz1z1101z11x00xxxx0z0z0xzzxzxzzxzxzxzxzzzzxxzzzzzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
