class c_2899_1;
    integer i = -482;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2899_1;
    c_2899_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101z0z1zx01zx0z1011zz1z1xxx10100xxzxzxxxzxzxzzxzxzzzzxzxzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
