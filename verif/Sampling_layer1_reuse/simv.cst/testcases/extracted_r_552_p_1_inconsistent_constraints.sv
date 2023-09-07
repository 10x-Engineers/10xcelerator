class c_552_1;
    integer i = -90;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_552_1;
    c_552_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0xz1z11110z011x1zz1xxx01110zxxxzzzzxzxzxxzxzzzxxxzzzzzzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
